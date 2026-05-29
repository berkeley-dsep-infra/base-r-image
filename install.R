#!/usr/bin/env Rscript

packages <- c(
  "IRkernel",
  "tidyverse",
  "plotly",
  "ggthemes",
  "Matrix",
  "sf",
  "stars",
  "markdown",
  "ggrepel",
  "infer",
  "janitor",
  "latex2exp",
  "patchwork",
  "tigris",
  "gapminder",
  "gt",
  "kableExtra",
  "RColorBrewer",
  "leaflet",
  "sp",
  "viridis",
  "DT",
  "here",
  "foreign",
  "multcomp",
  "lmtest"
)

to_install <- packages[!sapply(packages, requireNamespace, quietly = TRUE)]

if (length(to_install) > 0) {
  message("Installing: ", paste(to_install, collapse = ", "))
  install.packages(to_install, dependencies = TRUE)
} else {
  message("All packages already installed.")
}
