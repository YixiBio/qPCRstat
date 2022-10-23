\name{require.f}
\alias{require.f}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Attaching package with auto-install when locally unavailable
}
\description{
Require package with \code{install.packages} fallback.
}
\usage{
require.f(package, char.only = FALSE)
}
\arguments{
  \item{package}{
  the name of package.
  }
  \item{char.only}{
  define whether the input of \code{package} is character only.
  }
}
%%\details{
%%  ~~ If necessary, more details than the description above ~~
%%}
\value{
Console output to show if the package is successfully loaded. If the required package needs to be installed, download/install status or error message will be seen same as you can expect from \code{\link[utils:install.packages]{install.packages()}}
}
\author{
  ZHANG J.
}
%%\note{
%%  ~~further notes~~
%%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[base:require]{require()}}, \code{\link[utils:install.packages]{install.packages()}}
}
\examples{
\dontrun{
require.f(stats)
require.f("stats", char.only = TRUE)
}
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
