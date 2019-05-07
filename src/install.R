## Not strictly necessary: "MSstatsBioData"

## packages/repos to install
pks0 <- c("limma",
          "hexbin",
          "bioDist",
          "remotes",
          "ggplot2",
          "MSstats",
          "msdata",
          "MSnbase",
          "affy",
          "pRolocdata",
          "pRoloc",
          "ALL",
          "readr",
          "viridis",
          "RColorBrewer",
          "tidyr",
          "tidyverse",
          "magrittr",
          "js229/Vennerable",
          "UpSetR",
          "shiny",
          "RforProteomics",
          "Rtsne",
          "thomasp85/patchwork",
          "ComplexHeatmap")

pks <- sub("^.+\\/", "", pks0) ## pkg names only

## installed packages
ip <- rownames(installed.packages())

## bootstrap
if (!"devtools" %in% ip)
    install.packages("devtools", repos = "https://cran.rstudio.com/")

if (!"BiocManager" %in% ip)
    install.packages("BiocManager", repos = "https://cran.rstudio.com/")


## packages left to install
to_install <- setdiff(pks, ip)

if (length(to_install))
    BiocManager::install(pks0[match(to_install, pks)])
