
\name{bimodality_separation}
\alias{bimodality_separation}
\title{Bimodality Separation Function}
\usage{
bimodality_separation(mu1, mu2, sd1, sd2, ...)
}
\arguments{
\item{mu1}{The mean of mode 1}

\item{mu2}{The mean of mode 2}

\item{sd1}{The standard deviation of mode 1}

\item{sd2}{The standard deviation of mode 2}

\item{...}{Pass through arguments.}
}
\description{
This function calculates the Bimodality Separation of a data 
vector. Similar to Ashman, Bird, and Zepf's D statistic 
("Ashman's D"), the Bimodality Separation statistic measures
how differentiated two distributions (distribution components)
are. However, this statistic uses the added assumption that both
are Gaussian (normal) distributions (or that the distribution is 
a mixture of two Gaussian (normal) components).
For instance, if the two distributions are identical, this 
statistic is zero.
}
\examples{
##Example 1
#dist1<-rnorm(15,4,1)
#dist2<-rnorm(21,5,1)
#hist(c(dist1,dist2))

#mu1<-mean(dist1)
#mu2<-mean(dist2)
#sd1<-sd(dist1)
#sd2<-sd(dist2)
#bimodality_separation(mu1,mu2,sd1,sd2)

#Example 2
data<-c(rnorm(15,0,1),rnorm(21,15,3))
#hist(data)
#bimodality_separation(0,15,1,3)
}
\references{
Zhang, C., Mapes, B., & Soden, B. (2003). 
Bimodality in tropical water vapour. Quarterly Journal 
of the Royal Meteorological Society, 129(594), 2847-2866.
}
\keyword{Bimodality,}
\keyword{Measure}
\keyword{Modality}
\keyword{Parametric,}

