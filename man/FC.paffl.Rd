\name{FC.paffl}
\alias{FC.paffl}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Fold Change Calculation using Paffl method
}
\description{
  This function calculates relative fold change (FC) of GOI while taking primer efficiency into account. Recommended for FC calculation
}
\usage{
FC.paffl(sampleCt_GOI, sampleCt_HKG, controlCt_GOI, controlCt_HKG,
         E.GOI = 1, E.HKG = 1,
         output = "enhanced")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
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
  \item{E.GOI}{
  Primer Efficiency of gene of interest, should be a numeric value in decimal. \code{0.5} would represents a primer efficiency of 50\% and \code{1} would represents a primer efficiency of 100\%.
  }
  \item{E.HKG}{
  Primer Efficiency of house-keeping gene, should be a numeric value in decimal. \code{0.5} would represents a primer efficiency of 50\% and \code{1} would represents a primer efficiency of 100\%.
  }
  \item{output}{
     Value can be either \code{"raw"} or \code{"enhanced"}. Choose \code{"raw"} for raw output of FC. However, it is not instinctive for how much a gene is down-regulated. Therefore the default value is set to \code{"enhanced"}, where the down-regulation is presented in negative values and make the Fold Change in a linear corelation.
}
}
\details{
  The efficiency of both primers are default to 1, representing 100\% efficiency.
}
\value{
The output is a vector containing a numeric value or multiple numeric value when inputing multiple Ct values.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
  ZHANG J.
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link[=ddCt]{ddCt}}, FC calculation assuming a 100\% primer efficiency. require less input.
}
\examples{

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
