
\name{modes}
\alias{modes}
\title{Modes}
\usage{
modes(data, type = 1, digits = "NULL", nmore = "NULL")
}
\arguments{
\item{data}{Data vector.}

\item{type}{The type of data the vector contains. Defaults to 1.
\itemize{
     \item "1" converts the data to integers and then finds the mode(s)
 \item "2" rounds the data to the number of significant digits found
     in 'digits' and then finds the mode(s)
 \item "3" treats the data as factors and then finds the mode(s)
             }}

\item{digits}{How many significant digits should be retained? Defaults to NULL.}

\item{nmore}{{Specifices how many modes should be attempted. That is, it finds 
the "nmore" modes with decreasing frequency. For example, if the data is bimodal,
specify nmore=2 and the two most frequent values with their frequency will be
returned.}}

\item{...}{Pass through arguments.}
}
\description{
This function calculates the mode for an integer valued data 
vector by default.
It also calculates "nmore" more modes than the most frequently
occurring value and can take in data that should be treated as 
integers, real numbers (which can optionally be rounded to 
the "digits" number of significant digits), or factors. 
This mode function finds the value(s) that occur most frequently
so, crucially, if there is a tie in the frequency count for the mode
it will yield two modes instead of the lower valued mode. Yielding all
modes instead of just the lowest mode is particularly important when 
more advanced statistics and machine learning techniques are employed.
}
\examples{
#Example 1
data<-c(rep(6,9),rep(3,3))
#modes(data,type=1,"NULL","NULL")

#Example 2
#data<-c(rep(6,9),rep(3,9))
#modes(data,type=1,"NULL","NULL")

#Example 3
#data<-c(rep(6,9),rep(3,8),rep(7,7),rep(2,6))
#modes(data,type=1,"NULL",2)

#Example 4
#data<-c(rnorm(15,0,1),rnorm(21,5,1),rep(3,3))
#modes(data)

#Example 5
#data<-c(rep(6,3),rep(3,3),rnorm(15,0,1))
#modes(data,3,NULL,4)
#modes(data,type=2,digits=1,3)

}
\keyword{modality,}
\keyword{modes,}
\keyword{nonparametric}

