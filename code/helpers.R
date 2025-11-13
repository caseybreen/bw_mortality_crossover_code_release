## library packages 
pacman::p_load(
  data.table,
  tidyverse,
  here,
  ggrepel,
  cowplot,
  broom,
  fixest,
  gt,
  LexisPlotR,
  RColorBrewer,
  ipumsr,
  gompertztrunc,
  scales
)

## function for recoding education
recode_education <- function(df, educ_var) {
  df <- df  %>%
    mutate(educ_variable = !!sym(educ_var)) %>%
    mutate(educ_yrs = case_when(
      educ_variable == 2 ~ 0,
      educ_variable == 12 ~ 0,
      educ_variable == 14 ~ 1,
      educ_variable == 15 ~ 2,
      educ_variable == 16 ~ 3,
      educ_variable == 17 ~ 4,
      educ_variable == 22 ~ 5,
      educ_variable == 23 ~ 6,
      educ_variable == 25 ~ 7,
      educ_variable == 26 ~ 8,
      educ_variable == 30 ~ 9,
      educ_variable == 40 ~ 10,
      educ_variable == 50 ~ 11,
      educ_variable == 60 ~ 12,
      educ_variable == 70 ~ 13,
      educ_variable == 80 ~ 14,
      educ_variable == 90 ~ 15,
      educ_variable == 100 ~ 16,
      educ_variable == 110 ~ 17,
      educ_variable == 111 ~ 17,
      educ_variable == 112 ~ 17,
      educ_variable == 113 ~ 17
    )) %>%
    select(-educ_variable)
  return(df)
}
  
## hx calc
hx_calc <- function(x, b, M) {
    hx = b * exp(b*(x - M))
    return(hx)
  }


## calculate ln_qx 
## Function to calculate qx that can be bootstrapped 
## All cells have at least one death for 1975-2005  
# calculate_ln_qx <- function(data) {
#   data %>%
#     group_by(byear, death_age, race) %>%
#     summarize(deaths = n(), .groups = "drop") %>%
#     arrange(race, byear, death_age) %>%  ## data organized for cumsum which comes later
#     group_by(race, byear) %>%
#     mutate(
#       lx = sum(deaths) - lag(cumsum(deaths), default = 0),
#       qx = deaths / lx,
#       ln_qx = log(qx) ## this will give infinity unless there is at least one death per cell (!)
#     ) %>%
#     ungroup()
# }

calculate_qx <- function(data, weight_var = NULL) {
  
  # If a weight variable is supplied, use weighted sum.
  if (!is.null(weight_var)) {
    data <- data %>%
      group_by(byear, death_age, race) %>%
      summarize(
        deaths = sum(.data[[weight_var]], na.rm = TRUE),
        .groups = "drop"
      )
  } else {   # If not, use unweighted counts.
    data <- data %>%
      group_by(byear, death_age, race) %>%
      summarize(
        deaths = n(),   # unweighted
        .groups = "drop"
      )
  }
  
  ## calculate lx, qx, and then ln_qx 
  data %>%
    arrange(race, byear, death_age) %>%
    group_by(race, byear) %>%
    mutate(
      lx    = sum(deaths) - lag(cumsum(deaths), default = 0),
      qx    = deaths / lx,
      ln_qx = log(qx)
    ) %>%
    ungroup()
}


## Source .Rmd 
source_rmd = function(file, ...) {
  tmp_file = tempfile(fileext=".R")
  on.exit(unlink(tmp_file), add = TRUE)
  knitr::purl(file, output=tmp_file, quiet = T)
  source(file = tmp_file, ...)
}

