\name{is.outlier}
\alias{is.outlier}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Outliers Check
}
\description{
  Check if the input is outlier. If no range is given, the outliers are checked with one of the methods. When using `sem` (default), the data is checked with the range of mean±SEM.
}
\usage{
is.outlier(dat, method = "sem", inRange = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
     A numeric vector or a list.
}
  \item{method}{
     The method used to check. The dafault method is `sem`, which campares the data with mean±SEM.
}
  \item{inRange}{
     The range to compare with. Has be a numeric vector with a length of 2.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Output is a logical vector, which can then be combine in a data frame to identify the outliers.
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
 \code{\link[=sem]{sem}}
}
\examples{
is.outlier(c(1:5, 3:7, 10))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
\concept{ Outlier }
