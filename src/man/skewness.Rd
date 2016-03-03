
\name{skewness}
\alias{skewness}
\title{Skewness Function}
\usage{
skewness(x, finite = TRUE)
}
\arguments{
\item{x}{Data vector.}

\item{finite}{Should the finite sample correction (bias correction)
be used? Defaults to TRUE.}
}
\description{
This function calculates the skewness of a data with optional 
bias correction. The skewness is a measure of the symmetry of a 
distrbution. A negative skewness means the data is left skewed or 
has a fat left tail. The converse is true for a positive skew.
}
\examples{
#data<-c(rnorm(15,0,1),rnorm(21,5,1))
#hist(data)
#skewness(data,TRUE)
}
\keyword{moment}

