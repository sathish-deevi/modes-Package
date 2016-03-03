
\name{bimodality_amplitude}
\alias{bimodality_amplitude}
\title{Bimodality Amplitude Function}
\usage{
bimodality_amplitude(x, fig, ...)
}
\arguments{
\item{x}{Data vector.}

\item{fig}{Should a figure with the antimodes and peaks be plotted? 
Defaults to TRUE.}

\item{...}{Pass through arguments.}
}
\description{
This function calculates the Bimodality Ampltiude of a data vector.
This is a measure of the proportion of bimodality and the existence
of bimodality. The value lies between zero and one (that is: [0,1])
where the value of zero implies that the data is unimodal and the 
value of one implies the data is two point masses.
The proportion of bimodality here is referring to the mixture 
proportions of two, say, Gaussian (normal) components that can have
different frequencies. For instance, a 50%, 50% mixture with good
separation will be different from a 25%, 75% mixture. Explore the 
results of "Example 2" and "Example 3" to get a better understanding.
}
\examples{
#Example 1
#data<-c(rnorm(21,0,1),rnorm(21,5,1))
#hist(data)
#bimodality_amplitude(data,TRUE)

#Example 2
#dist1<-rnorm(21,5,2)
#dist2<-dist1+11
#data<-c(dist1,dist2)
#hist(data)
#bimodality_amplitude(data,TRUE)

#Example 3
#dist1<-rnorm(21,-15,1)
#dist2<-rep(dist1,3)+30
#data<-c(dist1,dist2)
#hist(data)
#bimodality_amplitude(data,TRUE)
}
\references{
Zhang, C., Mapes, B., & Soden, B. (2003). 
Bimodality in tropical water vapour. Quarterly Journal 
of the Royal Meteorological Society, 129(594), 2847-2866.
}
\keyword{Bimodality,}
\keyword{antinode}
\keyword{modes,}
\keyword{peaks,}

