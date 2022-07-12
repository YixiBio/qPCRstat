
<!-- README.md is generated from README.Rmd. Please edit that file -->

# qPCRstat

<!-- badges: start -->
<!-- [![R build -->
<!-- status](https://github.com/yiximeta/qPCRstat/workflows/R-CMD-check/badge.svg)](https://github.com/yiximeta/qPCRstat/actions) -->
<!-- [![Codecov test -->
<!-- coverage](https://codecov.io/gh/yiximeta/qPCRstat/branch/master/graph/badge.svg)](https://app.codecov.io/gh/yiximeta/qPCRstat?branch=master) -->
<!-- [![DOI](https://dev.yiximeta.com/badge/badgename.svg)](https://dev.yiximeta.com/badge/latestdoi/doiurl) -->
<!-- [![CRAN -->
<!-- status](http://www.r-pkg.org/badges/version/qPCRstat)](https://cran.r-project.org/package=qPCRstat) -->
<!-- badges: end -->

The goal of `qPCRstat` is to provide an easier way to process qPCR data
for graphical output. Meanwhile, some functions included is generic and
good for other use.

This package includes functions to calculate the fold change using
either ddCt method or Paffl method, and function to calculate SEM and
check outliers in a given dataset.

## Installation

Check [qPCRstat](https://dev.yiximeta.com/bio/qPCR/qPCRstat/) for latest
version.

To install the current version (0.1.0), follow the instruction here:

1.  Download the binary package from
    [here](https://dev.yiximeta.com/code/Rpackage/qPCRstat/0/0.1.0/qPCRstat_0.1.0.tgz);

2.  Then in a R session, type the following code (remember to replace
    the path to the actual file path on your computer):

``` r
PATH <- "/path/to/qPCRstat_0.1.0.tar.gz"
install.packages(PATH, repos = NULL, type ="source")
```

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
