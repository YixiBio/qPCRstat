#' @rdname require.f
#' @title Attaching package with auto-install when locally unavailable
#'
#' @description
#' \code{require} package with \code{install.packages} fallback.
#'
#' @usage
#' require.f(package, char.only = FALSE)

require.f <- function(package, char.only = FALSE) {
  if (!char.only) {
    package <- as.character(substitute(package))
    }
  if (is.na(package) || (package == "")) {
    stop("invalid package name")
  }
  if (!char.only) {
    msg <- require(package, character.only = TRUE, quietly = TRUE)
  } else {
    msg <- require(package, character.only = FALSE, quietly = TRUE)
  }
  if(msg == FALSE) {
    utils::install.packages(package)
    if (!char.only) {
      msg2 <- require(package, character.only = TRUE, quietly = TRUE)
    } else {
      msg2 <- require(package, character.only = FALSE, quietly = TRUE)
    }
    if (msg2 == FALSE) {
      warning("Required package unable to load!")
    }
  }
  if (msg == TRUE || msg2 == TRUE) {
    cat("The required package is loaded.\n")
  }
}
