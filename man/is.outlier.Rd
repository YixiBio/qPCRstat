\name{is.outlier}
\alias{is.outlier}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Outliers Check
}
\description{
  Check if the input is outlier by comparing the value to mean±SEM.
}
\usage{
is.outlier(dat, inRange = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
     A numeric vector or a list.
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (dat, inRange = NULL)
{
    if (is.null(inRange)) {
        inRange <- error.bar(dat, output = "vector")
    }
    if (!is.vector(inRange)) {
        inRange <- as.vector(inRange)
    }
    i = 1
    outliers <- 1:length(dat)
    ifelse(length(inRange) == 2, for (i in 1:length(dat)) {
        outliers[i] <- dat[i] > inRange[1] || dat[i] < inRange[2]
        i = i + 1
    }, simpleError("length of 'InRange' is not 2"))
    outliers
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
\concept{ Outlier }
