
\name{bimodality_coefficient}
\alias{bimodality_coefficient}
\title{Bimodality Coefficient}
\usage{
bimodality_coefficient(x, finite = TRUE, ...)
}
\arguments{
\item{x}{Data vector.}

\item{finite}{Should the finite sample size correction be applied to the
skewness and kurtosis measures?  Defaults to TRUE.}

\item{...}{Pass through arguments.}
}
\description{
This function calculates the Bimodality Coefficient of a data vector
with the option for a finite sample (bias) correction. This bias
correction is important to correct for the (well-documented) 
finite sample bias. 
The bimodality coefficient has a range of zero to one (that is: [0,1])
where a value greater than "5/9" suggests bimodality. The maximum value
of one ("1") can only be reached when the distribution is composed of
two point masses.
}
\examples{
 data<-c(rnorm(15,0,1),rnorm(21,5,1))
# hist(data)
# bimodality_coefficient(data,TRUE)
}
\references{
Ellison, A. (1987). Effect of Seed 
Dimorphism on the Density-Dependent Dynamics of 
Experimental Populations of Atriplex triangularis 
(Chenopodiaceae). American Journal of Botany, 74(8), 1280-1288.
}
\keyword{bimodality,}
\keyword{measure,}
\keyword{modality}
\keyword{nonparametric}

