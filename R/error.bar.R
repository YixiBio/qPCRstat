#' Calculate Error Bar by SEM
#'
#' @description
#' This function calculates the error bar presenting \code{mean+SEM} and \code{mean-SEM}.
#'
#' @details
#' By specifying the \code{output}, the result can be returned in either data frame (default), matrix or named vector with a length of 2.
#' When the output is data frame or matrix, the row name can be specified using \code{row.name} argument.
error.bar <- function(dat, output = "dataframe", row.name = NULL) {
  if (is.list(dat) == TRUE) {
    dat <- unlist(dat)
  }
  mean.dat <- mean(dat)
  sem.dat <- sem(dat)
  EB.positive <- mean.dat + sem.dat
  EB.negative <- mean.dat - sem.dat
   switch(output, "dataframe" = {
    data.frame("mean.plus.SEM" = EB.positive,
               "mean.min.SEM" = EB.negative,
               row.names = row.name)
    },
   "matrix" = {
    matrix(c(EB.positive, EB.negative),
           nrow = length(EB.positive),
           ncol = 2,
           byrow = TRUE,
           dimnames = list(row.name, c("mean.plus.SEM", "mean.min.SEM")))
  },
  "vector" = {
    c("mean.plus.SEM" = EB.positive,
      "mean.min.SEM" = EB.negative)
  })
}
