
\name{kurtosis}
\alias{kurtosis}
\title{Kurtosis Function}
\usage{
kurtosis(x, finite)
}
\arguments{
\item{x}{Data vector.}

\item{finite}{Should the finite sample correction (bias correction)
be used? Defaults to TRUE.}
}
\description{
This function calculates the excess kurtosis of a data vector with 
optional bias correction. Kurtosis is a meaure of the peakedness or 
how heavy the tails of a distribution are--this dual interpretation 
is a result of the obvious inverse relationship between fat tails and 
high peaks. Excess kurtosis is simply "kurtosis-3." This is a
correction that is often done to allow for comparision to the normal
distribution--which has a kurtosis of 3 and excess kurtosis of 0. 
A kurtosis greater than 0 means that the distribution is leptokurtic 
and so has a high peak with skinny tails. Conversely, a kurtosis less
than 0 means that the distribution is platykurtic and so has a low 
peak and heavy tails. This interpretation is slightly more complicated
once the distribution is not unimodal and/or non-zero skewness. 
Comparing to Gaussian (normal) moments is more acceptable in these
cases.
}
\examples{
data<-c(rnorm(15,0,1),rnorm(21,5,1))
#hist(data)
#kurtosis(data,TRUE)
}
\keyword{moment}

