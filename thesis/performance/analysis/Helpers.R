# Lee un archivo de resultados de CodeCoverageProfiler y devuelve una lista
# de data frames, uno por bloque, con el título del bloque como nombre.
read_profiler_output <- function(path) {
  lines <- readLines(path)
  block_ids <- cumsum(lines == "")
  blocks <- split(lines[lines != ""], block_ids[lines != ""])
  setNames(
    lapply(blocks, function(block) read.csv(text = block[-1])),
    sapply(blocks, `[`, 1)
  )
}

# Apila, en orden, el bloque con el título dado de cada serie, agregando
# una columna Serie (1, 2, 3, ...) que indica de qué archivo viene cada fila.
read_series <- function(files, block_title) {
  do.call(rbind, lapply(seq_along(files), function(serie) {
    block <- read_profiler_output(file.path("..", "data", "raw", files[serie]))[[block_title]]
    cbind(block, Serie = serie)
  }))
}

# Métodos de producción (instrumentables) de cada paquete.
metodos <- c(Aconcagua = 1169, Chalten = 916)

# Variación máxima entre series:
# (max. mediana - min. mediana) / punto medio * 100.
variation_percentage_between_series <- function(values, serie) {
  series_medians <- tapply(values, serie, median)
  max_median <- max(series_medians)
  min_median <- min(series_medians)
  midrange <- (max_median + min_median) / 2

  round((max_median - min_median) / midrange * 100, 2)
}

iqr_percentage <- function(values) {
  IQR(values) / median(values) * 100
}

estabilidad_row <- function(package, scenario, data) {
  data.frame(
    Paquete = package,
    Escenario = scenario,
    Variacion_entre_series_pct = round(variation_percentage_between_series(data$Time.ms., data$Serie), 2),
    IQR_mediana_pct = round(iqr_percentage(data$Time.ms.), 2)
  )
}

phase_stability_rows <- function(package, data) {
  phases <- c(
    "Instrumentación" = "Instrument.methods.ms.",
    "Ejecución"       = "Test.run.ms.",
    "Finalización"    = "Restore.original.methods.ms."
  )
  data.frame(
    Paquete = package,
    Fase = names(phases),
    Variacion_entre_series_pct = sapply(phases, function(column)
      variation_percentage_between_series(data[[column]], data$Serie)),
    IQR_mediana_pct = sapply(phases, function(column)
      round(iqr_percentage(data[[column]]), 2)),
    row.names = NULL
  )
}

overhead_row <- function(package, without_coverage_data, with_coverage_data) {
  sin_cobertura_ms <- median(without_coverage_data$Time.ms.)
  con_cobertura_ms <- median(with_coverage_data$Time.ms.)

  data.frame(
    Paquete = package,
    Sin_cobertura_ms = round(sin_cobertura_ms, 2),
    Con_cobertura_ms = round(con_cobertura_ms, 2),
    Overhead = round(con_cobertura_ms / sin_cobertura_ms, 2)
  )
}

phase_table_row <- function(package, data) {
  tiempo_ms <- round(median(data$Time.ms.), 2)
  costo_fijo_ms <- round(median(
    data$Instrument.methods.ms. + data$Restore.original.methods.ms.
  ),
  2)
  ejecucion_ms <- median(data$Test.run.ms.)

  data.frame(
    Paquete                = package,
    tiempo_ms              = tiempo_ms,
    Instrumentacion_ms     = round(median(data$Instrument.methods.ms.), 2),
    Ejecucion_ms           = round(ejecucion_ms, 2),
    Finalizacion_ms        = round(median(data$Restore.original.methods.ms.), 2),
    Costo_fijo_ms          = costo_fijo_ms,
    Costo_fijo_pct         = round(100 * costo_fijo_ms / tiempo_ms, 2),
    Costo_fijo_por_metodo  = round(costo_fijo_ms / metodos[[package]], 2),
    Ejecucion_pct          = round(100 * ejecucion_ms / tiempo_ms, 2)
  )
}

escenarios_row <- function(package, without_coverage_data, obc_data, method_coverage_data) {
  sin_cobertura_ms <- median(without_coverage_data$Time.ms.)
  obc_ms <- median(obc_data$Time.ms.)
  method_coverage_ms <- median(method_coverage_data$Time.ms.)

  data.frame(
    Paquete = package,
    Sin_cobertura_ms = round(sin_cobertura_ms, 2),
    OBC_ms = round(obc_ms, 2),
    Method_ms = round(method_coverage_ms, 2),
    Reduccion_pct = round((1 - method_coverage_ms / obc_ms) * 100, 2),
    Overhead_method = round(method_coverage_ms / sin_cobertura_ms, 2)
  )
}

# Reducción de Method Coverage frente a OBC, sobre las medianas sin redondear.
reduction_row <- function(package, obc_data, method_coverage_data) {
  costo_fijo <- function(data) median(data$Instrument.methods.ms. + data$Restore.original.methods.ms.)
  ejecucion <- function(data) median(data$Test.run.ms.)

  data.frame(
    Paquete = package,
    Costo_fijo_pct = round((1 - costo_fijo(method_coverage_data) / costo_fijo(obc_data)) * 100, 2),
    Ejecucion_pct = round((1 - ejecucion(method_coverage_data) / ejecucion(obc_data)) * 100, 2)
  )
}

# Formatea números como en la tesis: coma decimal y punto de miles.
fmt <- function(x, digits = 2) {
  formatC(x, format = "f", digits = digits, big.mark = ".", decimal.mark = ",")
}

# Imprime una tabla con título, con los números formateados como en la tesis.
show_table <- function(title, table, column_names) {
  table[] <- lapply(table, function(column) if (is.numeric(column)) fmt(column) else column)
  names(table) <- column_names
  cat("\n==", title, "==\n\n")
  print(table, row.names = FALSE)
}

# Imprime una cifra citada en el texto; un rango se muestra como mín–máx.
show_figure <- function(label, values) {
  cat(label, ": ", paste(fmt(values), collapse = "–"), "\n", sep = "")
}
