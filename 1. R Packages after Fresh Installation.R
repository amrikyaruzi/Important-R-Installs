### Required R packages after any installation

## R for VS Code (in a conda base environment)
pip3 install -U radian

# To run it:
radian

# For reticulate Auto Completions
pip install jedi

## From CRAN
pkglist <- c(
             "devtools", "tidyverse", "openxlsx", "officer", "broom", "glue", "tictoc", "rvg", "haven",
             "extrafont", "furrr", "ggtext", "googlesheets4", "googledrive", "gt", "gtsummary", "here",
             "markdown", "microbenchmark", "rbenchmark", "data.table", "qdap", "vroom", "arrow", "rvest",
             "duckdb", "RSQLite", "DBI", "arrow", "Rcpp", "RPostgreSQL", "odbc", "RPostgres", "httr",
             "dbplyr", "pacman", "reticulate", "JuliaCall", "patchwork", "remotes", "renv", "magick",
             "flextable", "webshot2", "future", "kableExtra", "reactable", "quarto", "Microsoft365R",
             "ggtext", "ggrepel", "bench", "profvis", "glmtoolbox", "tinytex", "robotstxt", "gtExtras",
             "pagedown", "bookdown", "officedown", "qpdf", "pdftools", "RSelenium", "writexl", "RODBC",
             "iheiddown", "ganttrify", "emayili", "keyring", "vegalite", "car", "Rcrawler",
             "progressr", "sf", "rgdal", "ggmap", "mapview", "naniar", "httpuv", "httpgd", "JuliaCall",
             "sampleSelection", "netstat", "async", "boot", "installr", "janitor", "lmtest", "sandwich",
             "MASS", "geepack", "glmtoolbox", "gee", "glmnet", "ltm", "spind", "stargazer", "report",
             "rextendr", "crew", "promises", "ipc", "camcorder", "shiny.fluent", "tidymodels", "pak",
             "cochrane", "ggh4x", "foreach", "coin", "duckplyr"
             )


still_pending <- pkglist[!(pkglist %in% installed.packages()[,"Package"])]



# Important settings for timeout for arrow package =/- others
if(getOption("timeout") <= 60){
  
  options(timeout = 3600)
  
}

pak::pak(pkglist)
#install.packages(pkglist)


## Others (non-cran)
pak::pak(c("posit-dev/r-shinylive", "schw4b/cochrane", "cimentadaj/scrapex"))

# purrr::walk(pkglist, ~usethis::browse_cran(.x)) #To browse cran sites for all those packages above

# Other important package
install.packages(
  "tidypolars",
  repos = c("https://etiennebacher.r-universe.dev", getOption("repos"))
)
remotes::install_github("mattcowgill/ggannotate")
remotes::install_github("AllanCameron/geomtextpath")

remotes::install_github("giocomai/ganttrify") # Works with ggplot2 to create a Gantt chart from a dataframe
remotes::install_github("r-lib/async")
install.packages("https://github.com/pola-rs/r-polars/releases/latest/download/polars.zip", repos = NULL) # Polars
remotes::install_github("lionel-/codegrip") #codegrip addin
devtools::install_github("rstudio/promises")

## Local
# boomer
devtools::install_github("r-dbi/odbc") #bado, but install.packages("odbc") works!
devtools::install_local("C:/Users/amri.kyaruzi/Downloads/Tempo/boomer_0.1.1.tar.gz")
# After downloading boomer from CRAN Archives

## From Other Sources
install.packages("paint", repos = c(mm = "https://milesmcbain.r-universe.dev", getOption("repos")))

## Updating packages
update.packages()

## Remotes - Functions of the MSK Biostatistics Department (as_ggpplot, etc)
remotes::install_github("ddsjoberg/bstfun")

# Officedown for Word & Ppptx advanced outputs from RMarkdown
remotes::install_github("davidgohel/officedown")

# Thesis down
remotes::install_github("ismayc/thesisdown")

## APA style in RMarkdown and referencing easily
devtools::install_github("crsh/papaja@devel")
devtools::install_github("crsh/citr")

## For qmd files (Quarto)
# Download and install quarto.exe

### Loading multiple packages without calling the library call on each one of them - How to
purrr::walk(c("tidyverse", "here", "openxlsx"), library, character.only = TRUE)

## For Julia Call
# To use JuliaCall you must have a working installation of Julia. This can be easily done via:

library(JuliaCall)
install_julia()

#which will automatically install and setup a version of Julia specifically for use with JuliaCall. Or you can do

library(JuliaCall)
julia_setup(installJulia = TRUE)

#which will invoke install_julia automatically if Julia is not found and also do initialization of JuliaCall.