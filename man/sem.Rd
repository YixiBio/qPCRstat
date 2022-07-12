\name{sem}
\alias{sem}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Standard Error of Mean
}
\description{
  Generic function to calculate SEM from a vector or a list.
}
\usage{
sem(x, na.rm = TRUE) ## the na.rm argument can and should be ingnored
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
     An \code{R} object. Currently accept a numeric/logical vectors or a list containing numeric/logical values only.
}
  \item{na.rm}{
    a logical evaluating to \code{TRUE} or \code{FALSE} indicating whether NA values should be stripped before the computation proceeds.
  }
}
\details{
  If \code{x} has multiple \code{NA} values and \code{na.rm} is set to \code{FALSE}, the output might be \code{NA}, Hence, it is recommand to leave \code{na.rm} argument to \code{TRUE}.

  This function calculates the Standard Deviation of \code{x} and divided by the size of \code{x}.
}
\value{
  This function will return a numeric vector with a length of 1.
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
\code{\link[stats:sd]{sd()}}, \code{\link[base:sqrt]{sqrt()}}, \code{\link[base:length]{length()}}
}
\examples{
##---- Sample data ----
x <- c(1:10, 5:20, NA[1:10])
dat <- as.list(x)
l <- sample(c(TRUE, FALSE), 10, replace = TRUE)


sem(x)
sem(x, na.rm = TRUE)
sem(dat)
sem(l)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
\keyword{ math }
% For non-standard keywords, use \concept instead of \keyword:
\concept{ SEM }
