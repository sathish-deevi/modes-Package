
\name{bimodality_ratio}
\alias{bimodality_ratio}
\title{Bimodality Ratio Function}
\usage{
bimodality_ratio(x, list = FALSE, ...)
}
\arguments{
\item{x}{Data vector.}

\item{list}{Calculate the Bimodality Ratio for a list of data vectors. 
This technique is faster than parallelizing for typical big datasets
(i.e. when the length of a data vector <=1E9), though benchmarks weren't
assessed beyond dimensions of 1E10 x 1E10.
When selected, this outputs a list of Bimodality Ratios.  Defaults to FALSE.}

\item{...}{Pass through arguments.}
}
\description{
This function calculates the Bimodality Ratio which is a measure
of the proportion of bimodality.
The proportion of bimodality here is referring to the mixture 
proportions of two, say, Gaussian (normal) components that can have
different frequencies. For instance, a 50%, 50% mixture with good
separation will be different from a 25%, 75% mixture. Explore the 
results of "Example 2", "Example 3", and "Example 4" to get a 
better understanding.
}
\examples{
#Example 1
#data<-c(rnorm(15,0,1),rnorm(21,5,1))
#bimodality_ratio(data,FALSE)

#values<-as.list(rep(list(rnorm(15,-4,2),rnorm(21,7,2),data),2))
#bimodality_ratio(values,TRUE)

#Example 2
dist1<-rnorm(21,5,2)
#dist2<-dist1+11
#data<-c(dist1,dist2)
#hist(data)
#bimodality_ratio(data,FALSE)

#Example 3
#dist1<-rnorm(21,-15,1)
#dist2<-rep(dist1,3)+30
#data<-c(dist1,dist2)
#hist(data)
#bimodality_ratio(data,FALSE)

#Example 4
#dist1<-rep(7,70)
#dist2<-rep(-7,70)
#data<-c(dist1,dist2)
#hist(data)
#bimodality_ratio(data,FALSE)
}
\references{
Zhang, C., Mapes, B., & Soden, B. (2003). 
Bimodality in tropical water vapour. Quarterly Journal 
of the Royal Meteorological Society, 129(594), 2847-2866.
}
\keyword{bimodality,}
\keyword{measure.}
\keyword{modality}
\keyword{nonparametric}

