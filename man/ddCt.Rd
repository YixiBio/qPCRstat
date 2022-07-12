\name{ddCt}
\alias{ddCt}
\alias{ddCt.Ct}
\alias{ddCt.raw}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Fold Change calculation by ddCt method
}
\description{
  This function calculates the relative fold change based on ddCt method, assuming the primer efficiency is ideal (100\%). Two deviations of this function are \code{ddCt.Ct()}, which accepts the two dCt value, and \code{ddCt.raw}, which accepts the raw value of GOI and HKG of sample and normalisation control.
}
\usage{
ddCt(ddCt, output = "enhanced")
ddCt.Ct(dCt_Sample, dCt_NorC, output = "enhanced")
ddCt.raw(sampleCt_GOI, sampleCt_HKG, controlCt_GOI, controlCt_HKG, output = "enhanced")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ddCt}{
     The ΔΔCt of the sample. must be numeric.
}
  \item{dCt_Sample}{
     The ΔCt of sample normalised to house-keeping gene. must be numeric vector.
}
  \item{dCt_NorC}{
     The ΔCt of normalisation control normalised to house-keeping gene. must be numeric vector.
}
  \item{sampleCt_GOI}{
     Ct value of Gene Of Interest for sample. must be numeric vector.
}
  \item{sampleCt_HKG}{
     Ct value of House-Keeping Gene for sample. must be numeric vector.
}
  \item{controlCt_GOI}{
     Ct value of Gene Of Interest for normalisation control. must be numeric vector.
}
  \item{controlCt_HKG}{
Ct value of House-Keeping Gene for normalisation control. must be numeric vector.
}
  \item{output}{
     Value can be either \code{"raw"} or \code{"enhanced"}. Choose \code{"raw"} for raw output of FC. However, it is not instinctive for how much a gene is down-regulated. Therefore the default value is set to \code{"enhanced"}, where the down-regulation is presented in negative values and make the Fold Change in a linear corelation.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Outputs numeric vector with the length of input.
}
\references{
 Livak, K. J., & Schmittgen, T. D. (2001). Analysis of relative gene expression data using real-time quantitative PCR and the 2(-Delta Delta C(T)) Method. Methods (San Diego, Calif.), 25(4), 402–408. DOI: 10.1006/meth.2001.1262
}
\author{
  ZHANG J.
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link[=FC.paffl]{FC.paffl}} for FC calculation using Paffl method.
}
\examples{
##       Sample data       ##

ddCt <- c(-5:4)
dCt <- data.frame(dCt1 = sample.int(5),
                  dCt2 = sample.int(5))
Ct <- data.frame(Ct1 = sample.int(10),
                 Ct2 = sample.int(10),
                 Ct3 = sample.int(10),
                 Ct4 = sample.int(10))

##     FC calculation     ##

ddCt(ddCt)
ddCt(ddCt, output = "raw")
ddCt.Ct(dCt$dCt1, dCt$dCt2, output = "enhanced")
ddCt.raw(Ct$Ct1, Ct$Ct2, Ct$Ct3, Ct$Ct4)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
