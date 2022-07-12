#' @title Fold Change Calculation using Paffl method
#'
#' @description
#' This function calculates relative fold change (FC) of GOI
#' while taking primer efficiency into account. Recommended
#' for FC calculation.
#'
#' @details
#' The efficiency of both primers are default to 1, representing 100% efficiency.
FC.paffl <- function(sampleCt_GOI, sampleCt_HKG, controlCt_GOI, controlCt_HKG, E.GOI = 1, E.HKG = 1, output = "enhanced") {
  E.GOI = E.GOI + 1
  E.HKG = E.HKG +1
  FC <- E.GOI^(controlCt_GOI - sampleCt_GOI) / E.HKG^(controlCt_HKG - sampleCt_HKG)
  switch(output,
         "raw" = {FC},
         "enhanced" = {ifelse(FC < 1, -1/FC, FC)})
}
