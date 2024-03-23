### Required R packages after any installation

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
             "rextendr", "crew", "promises", "ipc", "boom"
             )


still_pending <- pkglist[!(pkglist %in% installed.packages()[,"Package"])]

# Important settings for timeout for arrow package =/- others
if(getOption("timeout") <= 60){
  
  options(timeout = 3600)
  
}


install.packages(still_pending)


# Future/ purrr seed settings
options(future.rng.onMisuse = "ignore")