
<!-- README.md is generated from README.Rmd. Please edit that file -->

# qPCRstat

<!-- badges: start -->

[![R-CMD-check](https://github.com/YixiBio/qPCRstat/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/YixiBio/qPCRstat/actions/workflows/R-CMD-check.yaml)
[![DOI](https://zenodo.org/badge/513131897.svg)](https://zenodo.org/badge/latestdoi/513131897)
[![License: AGPL
v3](https://img.shields.io/badge/License-AGPL_v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)
[![GitHub release (latest by
date)](https://img.shields.io/github/v/release/YixiBio/qPCRstat?label=latest&logo=release)](https://github.com/YixiBio/qPCRstat/releases/latest/)
![GitHub Release
Date](https://img.shields.io/github/release-date/YixiBio/qPCRstat?logo=release-date)

<!-- badges: end -->

The goal of `qPCRstat` is to provide an easier way to process qPCR data
for graphical output. Meanwhile, some functions included is generic and
good for other use.

This package includes functions to calculate the fold change using
either ddCt method or Paffl method, and function to calculate SEM and
check outliers in a given dataset.

## Installation

Check
[qPCRstat](https://dev.yiximeta.com/resources/documentation/code/Rpackage/qPCRstat/)
for latest version.

To install the current version, follow the instruction here:

1.  Download the binary package from
    [here](https://dev.yiximeta.com/resources/code/Rpackage/qPCRstat/latest/);

2.  Then in a R session, type the following code (remember to replace
    the path to the actual file path on your computer):

``` r
PATH <- "/path/to/qPCRstat_version.tar.gz"
install.packages(PATH, repos = NULL, type ="source")
```

Alternatively, install via github directly in R console:

    # install.packages("remotes")
    remotes::install_github("YixiBio/qPCRstat")

Installation via CRAN is in consideration.

## Example

``` r
library(qPCRstat)
## sample data
set.seed(1)
Ct1 <- sample(c(35:12), 10, replace = TRUE)
set.seed(1)
Ct2 <- sample(c(12:35), 10, replace = TRUE)
dat <- data.frame(Sample = c(sample("sample", 9, replace = TRUE), "control"), Ct1 = Ct1, Ct2 = Ct2)

## calculate the FC
dat <- cbind(dat[dat$Sample == "sample",], 
             FC = ddCt.raw(dat[dat$Sample == "sample", "Ct1"], 
                           dat[dat$Sample == "sample", "Ct2"], 
                           dat[dat$Sample == "control", "Ct1"],
                           dat[dat$Sample == "control", "Ct2"]))

## check outliers
dat <- cbind(dat, Outliers = is.outlier(dat$FC))

## [Optional] Remove outliers, optionally save outliers in another data frame. 
dat.outlier <- dat[dat$Outliers == TRUE,]
dat.pure <- dat[dat$Outliers == FALSE,]

## Calculate the mean and mean±SEM
mean(dat[dat$Outliers == FALSE, "FC"])
#> [1] 42949672960
error.bar(dat[dat$Outliers == FALSE, "FC"])
#>   mean.plus.SEM mean.min.SEM
#> 1   68719476736  17179869184

## graphical output using plot() or ggplot2 package
```

## Limitations

-   To process the data, other package (e.g. `dplyr`) is needed.
-   Data might need to be structured with Excel or equivalent.

## To-Do

-   Add function to automatic digest a structured dataset and provide
    ready-to-use data frames for graphical output.
