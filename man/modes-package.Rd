\name{modes-package}
\alias{modes-package}
\alias{modes}
\docType{package}
\title{modes: An R package to find the modes & assess the modality 
	of complex or mixed distributions
}

\description{ The R package modes was designed with a dual purpose of
    accurately estimating the mode (or modes) as well as characterizing
    the modality of data. The specific application area includes complex 
    or mixture distibutions particularly in a big data environment.
    The heterogenous nature of (big) data may require deep introspective
    statistical and machine learning techniques, but these statistical tools 
    often fail when applied without first understanding the data. In small
    datasets, this often isn't a big issue, but when dealing with large scale
    data analysis or big data thoroughly inspecting each dimension
    typically yields an O(n^n-1) problem. As such, dealing with big data
    require an alternative toolkit. This package not only identifies the
    mode or modes for various data types, it also provides a programmatic
    way of understanding the modality (i.e. unimodal, bimodal, etc.) of
    a dataset (whether it's big data or not). See 
    <http://www.sdeevi.com/modes_package> for examples and discussion.
}

\details{

This package was designed to find the modes and aide in assessing the modality
of a dataset. It was optimized programmatically to be as efficient on 
big data as possible. The enclosed techniques span various fields of 
statistics and machine learning from exploratory data analysis, to distribution
theory, to univariate & multivariate statistics as well as data munging and 
multi-stage machine learning.

The key functions that are included in this package include:

Nonparametric 
	\itemize{
	 \item Mode: This function calculates the mode for an integer valued data 
 vector by default. It also calculates "nmore" more modes than the 
 most frequently occurring value and can take in data that should be 
 treated as integers, real numbers (which can optionally be rounded to 
 the "digits" number of significant digits), or factors. 
 This mode function finds the value(s) that occur most frequently
 so, crucially, if there is a tie in the frequency count for the mode
 it will yield two modes instead of the lower valued mode. Yielding all
 modes instead of just the lowest mode is particularly important when 
 more advanced statistics and machine learning techniques are employed.

	 \item Bimodality Amplitude: This function calculates
 the Bimodality Ampltiude of a data vector.
 This is a measure of the proportion of bimodality and the existence
 of bimodality. The value lies between zero and one (that is: [0,1])
 where the value of zero implies that the data is unimodal and the 
 value of one implies the data is two point masses.
 The proportion of bimodality here is referring to the mixture 
 proportions of two, say, Gaussian (normal) components that can have
 different frequencies. 

	 \item Bimodality Coefficient: This function calculates the 
 Bimodality Coefficient of a data vector
 with the option for a finite sample (bias) correction. This bias
 correction is important to correct for the (well-documented) 
 finite sample bias. 
 The bimodality coefficient has a range of zero to one (that is: [0,1])
 where a value greater than "5/9" suggests bimodality. The maximum value
 of one ("1") can only be reached when the distribution is composed of
 two point masses.

	 \item Bimodality Ratio:  This function calculates the Bimodality 
 Ratio which is a measure of the proportion of bimodality.
 The proportion of bimodality here is referring to the mixture 
 proportions of two, say, Gaussian (normal) components that can have
 different frequencies. For instance, a 50%, 50% mixture with good
 separation will be different from a 25%, 75% mixture. Explore the 


}

Parametric
	\itemize{
	 \item Ashman, Bird, and Zepf's D Statistic (Ashman's D): This function 
 calculates a measure of how well differentiated two distributions (distribution 
 components) are. For instance, if the two distributions are identical, this 
 statistic is zero. A good rule of thumb is that if the statistic 
 is above ~2, there is good separation.
 If you suspect that your data is bimodal this can be used 
 by replicating the suspected mixture components and checking the 
 statistic. Alternatively, if the components are known outright 
 this is straightforward to implement.

	 \item Bimodality Separation: the Bimodality Separation statistic measures
 how differentiated two distributions (distribution components)
 are. However, this statistic uses the added assumption that both
 are Gaussian (normal) distributions (or that the distribution is 
 a mixture of two Gaussian (normal) components).
}

}

\author{Sathish Deevi & 4D Strategies}


\references{
Ashman, K., Bird, C., & Zepf, S. (1994). 
 Detecting bimodality in astronomical datasets. 
The Astronomical Journal, 2348-2361.

Ellison, A. (1987). Effect of Seed Dimorphism on the
Density-Dependent Dynamics of Experimental 
Populations of Atriplex triangularis (Chenopodiaceae).
 American Journal of Botany, 74(8), 1280-1288.

Zhang, C., Mapes, B., & Soden, B. (2003). 
Bimodality in tropical water vapour. Quarterly Journal 
of the Royal Meteorological Society, 129(594), 2847-2866.
}

\keyword{ 
distribution
nonparametric
univar
multivariate
mode
}
\seealso{
\code{http://www.sdeevi.com/modes_package}
}

\examples{ #12 Examples of the most useful and common features of this package
#are included below.

#####		Nonparametric Examples		#####

### 1) Mode examples

 ##Example 1.1
 #data<-c(rep(6,9),rep(3,3))
 #mode(data,type=1,"NULL","NULL")

 ##Example 1.2
 #data<-c(rep(6,9),rep(3,9))
 #mode(data,type=1,"NULL","NULL")
 
 ##Example 1.3
 #data<-c(rep(6,9),rep(3,8),rep(7,7),rep(2,6))
 #mode(data,type=1,"NULL",2)

 ##Example 1.4
 #data<-c(rnorm(15,0,1),rnorm(21,5,1),rep(3,3))
 #mode(data)

 ##Example 1.5
 #data<-c(rep(6,3),rep(3,3),rnorm(15,0,1))
 #mode(data,3,NULL,4)
 #mode(data,type=2,digits=1,3)


### 2) Other General Parametric Examples

 ##Example 2.1
 #data<-c(rnorm(15,0,1),rnorm(21,5,1))
 #hist(data)
 #bimodality_amplitude(data,TRUE)
 #bimodality_coefficient(data,TRUE)
 #bimodality_ratio(data,FALSE)

 ##Example 2.2
 #data<-c(rnorm(21,0,1),rnorm(21,5,1))
 #hist(data)
 #bimodality_amplitude(data,TRUE)
 #bimodality_coefficient(data,TRUE)
 #bimodality_ratio(data,FALSE)

### 3) Mixture Proportions Examples

 ##Example 3.1
 #dist1<-rnorm(21,5,2)
 #dist2<-dist1+11
 #data<-c(dist1,dist2)
 #hist(data)
 #bimodality_amplitude(data,TRUE)
 #bimodality_ratio(data,FALSE)

 ##Example 3.2
 #dist1<-rnorm(21,-15,1)
 #dist2<-rep(dist1,3)+30
 #data<-c(dist1,dist2)
 #hist(data)
 #bimodality_amplitude(data,TRUE)
 #bimodality_ratio(data,FALSE)

 ##Example 3.4
 #dist1<-rep(7,70)
 #dist2<-rep(-7,70)
 #data<-c(dist1,dist2)
 #hist(data)
 #bimodality_ratio(data,FALSE)


#####		Parametric Examples		#####

### 4) Replicating a two component Gaussian (normal) mixture  
### Example 4.1

 ##Draw data & plot the distribution
 #dist1<-rnorm(14,-5,1)
 #dist2<-rnorm(21,5,1)
 #plot(density(c(dist1,dist2)), main="Bimodal Gaussian mixture distribution")
 
 ##Calculate the means and standard deviations
 #mu1<-mean(dist1)
 #mu2<-mean(dist2)
 #sd1<-sd(dist1)
 #sd2<-sd(dist2)

 ##Apply measures
 #Ashmans_D(mu1,mu2,sd1,sd2)
 #bimodality_separation(mu1,mu2,sd1,sd2)


### 5) Applying to know mixture components  
### Example 5.1

 ##Draw data & plot the distribution
 #data<-c(rnorm(15,0,1),rnorm(21,15,3))
 #plot(density(c(dist1,dist2)), main="Bimodal Gaussian mixture distribution")

 ##Apply measures
 #Ashmans_D(mu1,mu2,sd1,sd2)
 #bimodality_separation(mu1,mu2,sd1,sd2)
}
