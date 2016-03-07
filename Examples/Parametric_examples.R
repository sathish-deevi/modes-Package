
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
