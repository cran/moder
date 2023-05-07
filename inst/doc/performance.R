## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval=FALSE, include=FALSE-----------------------------------------------
#  library(moder)
#  library(profvis)
#  library(bench)
#  library(ggplot2)
#  
#  x <- c(2, 4, 6, NA, 3, 1, 1, 8, 1, 7)
#  
#  # Profiling `mode_first()`:
#  na.rm <- FALSE
#  accept <- FALSE
#  
#  profvis(purrr::map(
#    .x = rep(list(x), 100000),
#    .f = mode_first
#  ))
#  
#  # Benchmarking:
#  df <- mark(
#    mode_single = mode_single(x),
#    mode_first = mode_first(x),
#    mode_all = mode_all(x),
#    mean = mean(x),
#    median = median(x),
#    check = FALSE, iterations = 100000
#  )

