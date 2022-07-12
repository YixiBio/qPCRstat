#' Standard Error of Mean
#'
#' @description
#' Generic function to calculate SEM from a vector or a list.
#'@details
#'   If \code{x} has multiple \code{NA} values and \code{na.rm} is set to \code{FALSE}, the output might be \code{NA}, Hence, it is recommand to leave \code{na.rm} argument to \code{TRUE}.
#'
#'   This function calculates the Standard Deviation of \code{x} and divided by the size of \code{x}.
require(stats)
sem <- function(x, na.rm = TRUE) {
  if (is.list(x) == TRUE) {
    x <- unlist(x)
  }
  if(na.rm == TRUE) {
    x <- x[!is.na(x)]
  }
  sd(x)/sqrt(length(x))
}
