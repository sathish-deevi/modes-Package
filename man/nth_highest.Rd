
\name{nth_highest}
\alias{nth_highest}
\title{N-th Highest Value Function}
\usage{
nth_highest(x, k = 1)
}
\arguments{
\item{x}{Data vector.}

\item{k}{The N-th highest value or N-th max. For example, k=2 yields
the second highest value. 
Note that k=1 gives the highest value aka the global max. Defaults to 1.}
}
\description{
This function allows you to calculate the N-th highest number of a 
vector. In other words, it is the N-th max; it calculates the maximum 
after removing (n-1) higher numbers (maxes). 
Note that k=1 yields the traditional global maximum.
}
\examples{
#data<-c(rnorm(15,0,1),rnorm(21,5,1))
#nth_highest(data,2)
}
\keyword{Global}
\keyword{Local}
\keyword{Max}
\keyword{Max,}

