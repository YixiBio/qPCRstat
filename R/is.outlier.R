#' Outliers Check
#'
#' @description
#' Check if the input is outlier by comparing the value to mean±SEM.
#'
#' @details
is.outlier <- function(dat, inRange = NULL) {
  if (is.list(dat) == TRUE) {
    dat <- unlist(dat)
  }
  if (is.vector(dat) != TRUE) {
    simpleError("Type of input does not match the requirement. Type ?is.outlier to see more.")
  }
  if (is.null(inRange)) {
    inRange <- error.bar(dat, output = "vector")
  }
  if (!is.vector(inRange)) {
    inRange <- as.vector(inRange)
  }
  outliers <- sample(NA, length(dat), replace = TRUE)
  as.logical(outliers)
  if (length(inRange) == 2) {
    i = 1
    for(i in 1:length(dat)) {
      outliers[i] <- dat[i] > inRange[1] || dat[i] < inRange[2]
      i = i+1
    }
    outliers
  } else {
    errorCondition("length of 'InRange' is not 2", class = "error")
    }
}

