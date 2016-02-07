
\name{Ashmans_D}
\alias{Ashmans_D}
\title{A function to calculate Ashman, Bird, and Zepf's D Statistic}
\usage{
Ashmans_D(mu1, mu2, sd1, sd2, ...)
}
\arguments{
\item{mu1}{The mean of mode 1}

\item{mu2}{The mean of mode 2}

\item{sd1}{The standard deviation of mode 1}

\item{sd2}{The standard deviation of mode 2}

\item{...}{Pass through arguments.}
}
\description{
This function calculates Ashman's D, which is a measure of how
well differentiated two distributions (distribution components) are.
For instance, if the two distributions are identical, this 
statistic is zero. A good rule of thumb is that if the statistic 
is above ~2, there is good separation.
If you suspect that your data is bimodal this can be used 
by replicating the suspected mixture components and checking the 
statistic. Alternatively, if the components are known outright 
this is straightforward to implement.
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
#Ashmans_D(mu1,mu2,sd1,sd2)

##Example 2
#data<-c(rnorm(15,0,1),rnorm(21,15,3))
#hist(data)
#Ashmans_D(0,15,1,3)
}
\references{
Ashman, K., Bird, C., & Zepf, S. (1994). 
 Detecting bimodality in astronomical datasets. 
 The Astronomical Journal, 2348-2361.
}
\keyword{Bimodality,}
\keyword{Measure}
\keyword{Modality}
\keyword{Parametric,}

