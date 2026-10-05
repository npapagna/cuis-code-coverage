# ==============================================================================
# TESIS: ANÁLISIS DE PERFORMANCE
#
# Calcula las tablas y cifras de la sección Performance del capítulo 5 a
# partir de los archivos de ../data/raw/ y las imprime en la consola, con el
# número de tabla de la tesis. Correr con analysis/ como directorio de trabajo
# (al abrir analysis.Rproj en RStudio ya lo es).
# ==============================================================================

# Comenzar con un entorno vacío
rm(list = ls(all.names = TRUE))

source("Helpers.R")

# Evita que las tablas anchas se partan en varias líneas.
options(width = 200)

# Cada archivo de ../data/raw es una serie; se apilan las 3 series de cada escenario.
aconcagua_obc_files <- c("Aconcagua21239567663.txt", "Aconcagua27287304956.txt", "Aconcagua34767548292.txt")
chalten_obc_files <- c("Chalten56923775841.txt", "Chalten79874487741.txt", "Chalten103687726743.txt")
aconcagua_method_coverage_files <- c("Aconcagua14143891578.txt", "Aconcagua18652844915.txt", "Aconcagua23716533308.txt")
chalten_method_coverage_files <- c("Chalten31533917742.txt", "Chalten38939517637.txt", "Chalten49224939505.txt")

aconcagua_without_coverage <- read_series(aconcagua_obc_files, "Test run without coverage")
aconcagua_with_obc <- read_series(aconcagua_obc_files, "Test run with coverage")
chalten_without_coverage <- read_series(chalten_obc_files, "Test run without coverage")
chalten_with_obc <- read_series(chalten_obc_files, "Test run with coverage")
aconcagua_with_method_coverage <- read_series(aconcagua_method_coverage_files, "Test run with coverage")
chalten_with_method_coverage <- read_series(chalten_method_coverage_files, "Test run with coverage")


# ==============================================================================
# Estabilidad de las mediciones
# ==============================================================================

tabla_5_2 <- rbind(
  estabilidad_row("Aconcagua", "Sin cobertura", aconcagua_without_coverage),
  estabilidad_row("Aconcagua", "Con cobertura", aconcagua_with_obc),
  estabilidad_row("Chalten", "Sin cobertura", chalten_without_coverage),
  estabilidad_row("Chalten", "Con cobertura", chalten_with_obc)
)
show_table("Tabla 5.2. Estabilidad de las mediciones", tabla_5_2,
           c("Paquete", "Escenario", "Variación entre series (%)", "IQR/Mediana (%)"))

fases_obc <- rbind(
  phase_stability_rows("Aconcagua", aconcagua_with_obc),
  phase_stability_rows("Chalten", chalten_with_obc)
)
show_table("Estabilidad por fase, con cobertura (OBC)", fases_obc,
           c("Paquete", "Fase", "Variación entre series (%)", "IQR/Mediana (%)"))

chalten_finalizacion <- fases_obc$Paquete == "Chalten" & fases_obc$Fase == "Finalización"
show_figure("Variación máxima entre series de las fases (%)",
            max(fases_obc$Variacion_entre_series_pct))
show_figure("IQR/Mediana de las fases, salvo la finalización en Chalten (%)",
            range(fases_obc$IQR_mediana_pct[!chalten_finalizacion]))
show_figure("IQR/Mediana de la finalización en Chalten (%)",
            fases_obc$IQR_mediana_pct[chalten_finalizacion])


# ==============================================================================
# Tiempos de ejecución y overhead
# ==============================================================================

tabla_5_3 <- rbind(
  overhead_row("Aconcagua", aconcagua_without_coverage, aconcagua_with_obc),
  overhead_row("Chalten", chalten_without_coverage, chalten_with_obc)
)
show_table("Tabla 5.3. Tiempos de ejecución y overhead", tabla_5_3,
           c("Paquete", "Sin cobertura (ms)", "Con cobertura (ms)", "Overhead (x)"))


# ==============================================================================
# Descomposición por fases
# ==============================================================================

fases_obc_tiempos <- rbind(
  phase_table_row("Aconcagua", aconcagua_with_obc),
  phase_table_row("Chalten", chalten_with_obc)
)
show_table("Tabla 5.4. Descomposición por fases",
           fases_obc_tiempos[, c("Paquete", "Instrumentacion_ms", "Ejecucion_ms", "Finalizacion_ms", "Costo_fijo_ms")],
           c("Paquete", "Instrumentación (ms)", "Ejecución (ms)", "Finalización (ms)", "Costo fijo (ms)"))
show_table("Costo fijo y ejecución como parte del total, y costo fijo por método",
           fases_obc_tiempos[, c("Paquete", "Costo_fijo_pct", "Ejecucion_pct", "Costo_fijo_por_metodo")],
           c("Paquete", "Costo fijo (%)", "Ejecución (%)", "Costo fijo por método (ms)"))


# ==============================================================================
# OBC/AST vs Method Coverage/Wrappers
# ==============================================================================

tabla_5_5 <- rbind(
  escenarios_row("Aconcagua", aconcagua_without_coverage, aconcagua_with_obc, aconcagua_with_method_coverage),
  escenarios_row("Chalten", chalten_without_coverage, chalten_with_obc, chalten_with_method_coverage)
)
show_table("Tabla 5.5. Sin cobertura, OBC y Method Coverage",
           tabla_5_5[, c("Paquete", "Sin_cobertura_ms", "OBC_ms", "Method_ms", "Reduccion_pct")],
           c("Paquete", "Sin cobertura (ms)", "OBC (ms)", "Method Coverage (ms)", "Reducción Method frente a OBC (%)"))

estabilidad_method_coverage <- rbind(
  estabilidad_row("Aconcagua", "Method Coverage", aconcagua_with_method_coverage),
  estabilidad_row("Chalten", "Method Coverage", chalten_with_method_coverage)
)
show_table("Estabilidad con Method Coverage", estabilidad_method_coverage,
           c("Paquete", "Escenario", "Variación entre series (%)", "IQR/Mediana (%)"))

fases_method_coverage <- rbind(
  phase_stability_rows("Aconcagua", aconcagua_with_method_coverage),
  phase_stability_rows("Chalten", chalten_with_method_coverage)
)
show_table("Estabilidad por fase con Method Coverage", fases_method_coverage,
           c("Paquete", "Fase", "Variación entre series (%)", "IQR/Mediana (%)"))

chalten_ejecucion <- fases_method_coverage$Paquete == "Chalten" & fases_method_coverage$Fase == "Ejecución"
show_figure("Variación máxima entre series de las fases (%)",
            max(fases_method_coverage$Variacion_entre_series_pct))
show_figure("IQR/Mediana de las fases, salvo la ejecución en Chalten (%)",
            range(fases_method_coverage$IQR_mediana_pct[!chalten_ejecucion]))
show_figure("IQR/Mediana de la ejecución en Chalten (%)",
            fases_method_coverage$IQR_mediana_pct[chalten_ejecucion])

show_table("Overhead de Method Coverage frente a la corrida sin cobertura",
           tabla_5_5[, c("Paquete", "Overhead_method")],
           c("Paquete", "Overhead (x)"))

fases_method_coverage_tiempos <- rbind(
  phase_table_row("Aconcagua", aconcagua_with_method_coverage),
  phase_table_row("Chalten", chalten_with_method_coverage)
)
tabla_5_6 <- rbind(
  cbind(Criterio = "OBC", fases_obc_tiempos),
  cbind(Criterio = "Method", fases_method_coverage_tiempos)
)
tabla_5_6 <- tabla_5_6[order(tabla_5_6$Paquete, tabla_5_6$Criterio != "OBC"), ]
show_table("Tabla 5.6. Descomposición por fases, OBC y Method Coverage",
           tabla_5_6[, c("Paquete", "Criterio", "Instrumentacion_ms", "Ejecucion_ms", "Finalizacion_ms", "Costo_fijo_ms")],
           c("Paquete", "Criterio", "Instrumentación (ms)", "Ejecución (ms)", "Finalización (ms)", "Costo fijo (ms)"))

reducciones <- rbind(
  reduction_row("Aconcagua", aconcagua_with_obc, aconcagua_with_method_coverage),
  reduction_row("Chalten", chalten_with_obc, chalten_with_method_coverage)
)
show_table("Reducción de Method Coverage frente a OBC", reducciones,
           c("Paquete", "Costo fijo (%)", "Ejecución (%)"))


# ==============================================================================
# Distribuciones (en el panel Plots de RStudio)
# ==============================================================================

escenarios <- list(
  "Aconcagua, sin cobertura" = aconcagua_without_coverage,
  "Aconcagua, OBC" = aconcagua_with_obc,
  "Aconcagua, Method Coverage" = aconcagua_with_method_coverage,
  "Chalten, sin cobertura" = chalten_without_coverage,
  "Chalten, OBC" = chalten_with_obc,
  "Chalten, Method Coverage" = chalten_with_method_coverage
)
old_par <- par(mfrow = c(2, 3))
for (name in names(escenarios))
  hist(escenarios[[name]]$Time.ms., breaks = 50, main = name, xlab = "Tiempo (ms)", ylab = "Frecuencia")
par(old_par)
