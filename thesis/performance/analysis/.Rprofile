# Al abrir analysis.Rproj en RStudio, abrir el script de análisis.
setHook("rstudio.sessionInit", function(newSession) {
  if (newSession && requireNamespace("rstudioapi", quietly = TRUE))
    rstudioapi::navigateToFile("Analisis.R")
}, action = "append")
