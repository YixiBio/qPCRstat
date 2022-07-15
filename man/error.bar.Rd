\name{error.bar}
\alias{error.bar}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Calculate Error Bar by SEM
}
\description{
  This function calculates the error bar presenting \code{mean+SEM} and \code{mean-SEM}.
}
\usage{
error.bar(dat, output = "dataframe", row.name = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
     A \code{R} object. Can be a vector or a list.
}
  \item{output}{
     Format of the output, currently support data frame and matrix. By default this function will outputting the value in a data frame, however, it can also be set to \code{"matrix"} to present the result in a matrix, or \code{"vector"} to present the result in a named vector.

     Don't forget to include \code{""}, otherwise it will return an error.
  }
  \item{row.name}{
     Specify the row name of output, handy to use when combinding the result into a single data frame or matrix. It can be a string or a variable with a length of \code{1}, the default value is \code{NULL}.
  }
}
\details{
  By specifying the \code{output}, the result can be returned in either data frame (default), matrix or named vector with a length of 2.

  When the output is data frame or matrix, the row name can be specified using \code{row.name} argument.
}
\value{
For \code{output} set to \code{"dataframe"} or left blank: a two column data frame where the first column is \code{mean+SEM} and the second column is \code{mean-SEM}.

For \code{output} set to \code{"matrix"}: a two column matrix where the first column is \code{mean+SEM} and the second column is \code{mean-SEM}.

For \code{output} set to \code{"vector"}: a named vactor containing the first value as \code{mean+SEM} and the second value as \code{mean-SEM}.
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
 \code{\link[=sem]{sem()}}, \code{\link[base:mean]{mean()}}
}
\examples{
x <- 1:10 ## ==>  Define data,

error.bar(x)

# make output in matrix
error.bar(x, output = "matrix")


# give row name "test" to the output
error.bar(x, row.name = "test")
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
