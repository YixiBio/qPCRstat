#' @rdname ddCt
#' @title Fold Change calculation by ddCt method
#'
#' @description
#' This function calculates the relative fold change based on ddCt method, assuming the primer efficiency is ideal (100%).
#' Two deviations of this function are \code{ddCt.Ct()}, which accepts the two dCt value,
#' and \code{ddCt.raw}, which accepts the raw value of GOI and HKG of sample and normalisation control.

ddCt <- function(ddCt, output = "enhanced"){
  FC <- 2^(-ddCt)
  switch(output,
         "raw" = {FC},
         "enhanced" = {ifelse(FC < 1, -1/FC, FC)})
}
#' @rdname ddCt
ddCt.Ct <- function(dCt_Sample, dCt_NorC, output = "enhanced") {
  ddCt <- dCt_Sample - dCt_NorC
  ddCt(ddCt, output = "enhanced")
}
#' @rdname ddCt
ddCt.raw <- function(sampleCt_GOI, sampleCt_HKG, controlCt_GOI, controlCt_HKG, output = "enhanced") {
  dCt_Sample <- sampleCt_GOI - sampleCt_HKG
  dCt_NorC <- controlCt_GOI - controlCt_HKG
  ddCt.Ct(dCt_Sample, dCt_NorC, output = "enhanced")
}
