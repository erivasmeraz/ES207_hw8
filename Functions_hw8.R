vector.to.string <- function(x, collapse = ", ") {
  str_c(x, collapse = collapse)
}

vector.to.string(letters[])


o3.annual.daily.mean <- function(x){
  out <- group_by(x, year, `County Abbr`) %>%
    summarize(annual.daily.mean = mean(o3, na.rm = TRUE))
}