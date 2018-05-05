## Not strictly necessary: "MSstatsBioData"

## packages/repos to install
pks0 <- c("limma",
          "bioDist",
          "ggplot2",
          "MSstats"
          "msdata",
          "MSnbase",
          "affy",
          "pRolocdata",
          "pRoloc",
          "ALL",
          "readr",
          "tidyr",
          "tidyverse",
          "magrittr",
          "js229/Vennerable",
          "UpSetR",
          "ggvis",
          "shiny",
          "RforProteomics",
          "ComplexHeatmap",
          "thomasp85/patchwork")
pks <- sub("^.+\\/", "", pks0) ## pkg names only

## installed packages
ip <- rownames(installed.packages())

## bootstrap
if (!"devtools" %in% ip)
    install.packages("devtools", repos = "https://cran.rstudio.com/")
source("http://www.bioconductor.org/biocLite.R")

## packages left to install
to_install <- setdiff(pks, ip)

if (length(to_install))
    biocLite(pks0[match(to_install, pks)])