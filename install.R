#!/usr/bin/env Rscript

# Function to install R packages
install_packages_with_versions <- function(packages) {
  available <- available.packages()
  to_install <- names(packages)[!(names(packages) %in% rownames(installed.packages()))]

  if (length(to_install) > 0) {
    install.packages(to_install, available = available,
                     versions = packages[to_install],
                     dependencies = TRUE)
  } else {
    cat("All packages are already installed.\n")
  }
}

# List of packages to ensure are installed
required_packages <- c("remotes", "devtools")

# Check and install required packages
new_packages <- required_packages[!sapply(required_packages, requireNamespace, quietly = TRUE)]
if (length(new_packages) > 0) {
  install.packages(new_packages)
}

packages = list(
  "IRkernel" = "1.3.2",         # required for jupyter R kernel
  "tidyverse" = "2.0.0",
  "plotly" = "4.12.0",
  "ggthemes" = "5.2.0",
  "Matrix" = "1.7-1",
  "sf" = "1.1-1",
  "stars" = "0.7-2",
  "markdown" = "2.0",
  "ggrepel" = "0.9.8",
  "infer" = "1.1.0",
  "janitor" = "2.2.1",
  "latex2exp" = "0.9.8",
  "patchwork" = "1.3.2",
  "tigris" = "2.2.1",
  "gapminder" = "1.0.1",
  "gt" = "1.3.0",
  "kableExtra" = "1.4.0",
  "RColorBrewer" = "1.1-3",
  "leaflet" = "2.2.3",
  "sp" = "2.2-1",
  "viridis" = "0.6.5",
  "DT" = "0.34.0",
  "here" = "1.0.2",
  "foreign" = "0.8-87",
  "multcomp" = "1.4-30",
  "lmtest" = "0.9-40"
)

install_packages_with_versions(packages)
