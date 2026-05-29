#!/usr/bin/env Rscript

# Ensure remotes is available first
if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

packages <- list(
  "IRkernel"     = "1.3.2",   # required for jupyter R kernel
  "tidyverse"    = "2.0.0",
  "plotly"       = "4.12.0",
  "ggthemes"     = "5.2.0",
  "Matrix"       = "1.7-1",
  "sf"           = "1.1-1",
  "stars"        = "0.7-2",
  "markdown"     = "2.0",
  "ggrepel"      = "0.9.8",
  "infer"        = "1.1.0",
  "janitor"      = "2.2.1",
  "latex2exp"    = "0.9.8",
  "patchwork"    = "1.3.2",
  "tigris"       = "2.2.1",
  "gapminder"    = "1.0.1",
  "gt"           = "1.3.0",
  "kableExtra"   = "1.4.0",
  "RColorBrewer" = "1.1-3",
  "leaflet"      = "2.2.3",
  "sp"           = "2.2-1",
  "viridis"      = "0.6.5",
  "DT"           = "0.34.0",
  "here"         = "1.0.2",
  "foreign"      = "0.8-87",
  "multcomp"     = "1.4-30",
  "lmtest"       = "0.9-40"
)

install_packages_with_versions <- function(packages) {
  for (pkg in names(packages)) {
    version <- packages[[pkg]]
    installed <- tryCatch(packageVersion(pkg), error = function(e) NULL)

    if (is.null(installed) || as.character(installed) != version) {
      message("Installing ", pkg, " == ", version)
      remotes::install_version(pkg, version = version, dependencies = TRUE, upgrade = "never")
    } else {
      message("Already installed: ", pkg, " == ", version)
    }
  }
}

install_packages_with_versions(packages)
