
\name{amps}
\alias{amps}
\title{A helper function to find the amplitudes by finding the
peaks and antimodes of a data vector.}
\usage{
amps(x)
}
\arguments{
\item{x}{Data vector.}
}
\description{
This function finds the peaks and antimodes by way of 
distribution density estimation. It may be convenient to think
of this function as finding the global and local maxima and
the local minima of a data vector. Note that the global minimum
is asymptotically zero ("0")from based on distribution theory;
for practical purposes, double checking the global minimum is 
good practice. Just run ("min(x))")
}
\examples{
#data<-c(rnorm(15,0,1),rnorm(21,5,1))
#amps(data)
}
\keyword{Amplitude,}
\keyword{Antimode,}
\keyword{Mode}
\keyword{Peak,}

