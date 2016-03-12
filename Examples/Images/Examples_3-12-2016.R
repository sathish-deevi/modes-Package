detach("package:modes", unload=TRUE)
library(modes)



install.packages("modes", repos=NULL, type="source")


##Example 1.1

data<-c(rep(6,9),rep(3,3))
modes(data,type=1,digits="NULL",nmore="NULL")

jpeg(file = "Example_1.1.%d.jpeg")
plot(density(data), main="Simple mixed distribution density")
hist(data,  main="Simple mixed distribution histogram")
dev.off()




##Example 1.2
data<-c(rep(6,9),rep(3,9))
modes(data,type=1,"NULL","NULL")

jpeg(file = "Example_1.2.%d.jpeg")
plot(density(data), main="Equal proportions mixed distribution density")
hist(data,  main="Equal proportions mixed distribution histogram")
dev.off()




##Example 1.3
data<-c(rep(6,9),rep(3,8),rep(7,7),rep(2,6))
modes(data,type=1,"NULL",2)

jpeg(file = "Example_1.3.%d.jpeg")
plot(density(data), main="Three component mixed distribution density")
hist(data,  main="Three component mixed distribution histogram")
dev.off()



##Example 1.4
set.seed(1246)
data<-c(rnorm(15,0,1),rnorm(21,5,1),rep(3,3))
modes(data)

jpeg(file = "Example_1.4.%d.jpeg")
plot(density(data), main="3 component Gaussian mixed distribution density")
hist(data,  main="3 component Gaussian mixed distribution histogram")
dev.off()



##Example 1.5
set.seed(1246)
data<-c(rep(6,3),rep(3,3),rnorm(15,0,1))
    modes(data,3,NULL,4)
    modes(data,type=2,digits=1,3)

jpeg(file = "Example_1.5.%d.jpeg")
plot(density(data), main="3 component Gaussian mixed distribution density")
hist(data,  main="3 component Gaussian mixed distribution histogram")
dev.off()



##Example 2.1
set.seed(1246)
data<-c(rnorm(15,0,1),rnorm(21,5,1))
hist(data)
bimodality_amplitude(data,TRUE)
bimodality_coefficient(data,TRUE)
bimodality_ratio(data,FALSE)

jpeg(file = "Example_2.1.%d.jpeg")
	plot(density(data), main="2 component Gaussian mixed distribution density")
	hist(data,  main="2 component Gaussian mixed distribution histogram")
	bimodality_amplitude(data,TRUE)
dev.off()



##Example 2.1
set.seed(1246)
data<-c(rnorm(21,0,1),rnorm(21,5,1))
hist(data)
bimodality_amplitude(data,TRUE)
bimodality_coefficient(data,TRUE)
bimodality_ratio(data,FALSE)

jpeg(file = "Example_2.2.%d.jpeg")
	plot(density(data), main="2 component Gaussian mixed distribution density")
	hist(data,  main="2 component Gaussian mixed distribution histogram")
	bimodality_amplitude(data,TRUE)
dev.off()





##Example 3.1
set.seed(1246)
dist1<-rnorm(21,5,2)
dist2<-dist1+11
data<-c(dist1,dist2)
hist(data)
bimodality_amplitude(data,TRUE)
bimodality_ratio(data,FALSE)

jpeg(file = "Example_3.1.%d.jpeg")
	plot(density(data), main="2 component Gaussian mixed distribution density")
	hist(data,  main="2 component Gaussian mixed distribution histogram")
	bimodality_amplitude(data,TRUE)
dev.off()



##Example 3.2
set.seed(1246)
dist1<-rnorm(21,-15,1)
dist2<-rep(dist1,3)+30
data<-c(dist1,dist2)
hist(data)
bimodality_amplitude(data,TRUE)
bimodality_ratio(data,FALSE)

jpeg(file = "Example_3.2.%d.jpeg")
	plot(density(data), main="2 component Gaussian mixed distribution density")
	hist(data,  main="2 component Gaussian mixed distribution histogram")
	bimodality_amplitude(data,TRUE)
dev.off()


##Example 3.3 (3.4??)
set.seed(1246)
dist1<-rep(7,70)
dist2<-rep(-7,70)
data<-c(dist1,dist2)
hist(data)
bimodality_ratio(data,FALSE)

jpeg(file = "Example_3.3.%d.jpeg")
	plot(density(data), main="2 component Gaussian mixed distribution density")
	hist(data,  main="2 component Gaussian mixed distribution histogram")
dev.off()


##Example 4.1
set.seed(1246)
dist1<-rnorm(14,-5,1)
dist2<-rnorm(21,5,1)
plot(density(c(dist1,dist2)), main="Bimodal Gaussian mixture distribution")


mu1<-mean(dist1)
mu2<-mean(dist2)
sd1<-sd(dist1)
sd2<-sd(dist2)

Ashmans_D(mu1,mu2,sd1,sd2)
bimodality_separation(mu1,mu2,sd1,sd2)


jpeg(file = "Example_4.1.%d.jpeg")
	plot(density(data), main="Bimodal Gaussian mixture distribution density")
	hist(data,  main="Bimodal Gaussian mixture distribution histogram")
dev.off()



##Example 5.1
set.seed(1246)
data<-c(rnorm(15,0,1),rnorm(21,15,3))
plot(density(c(dist1,dist2)), main="Bimodal Gaussian mixture distribution")

jpeg(file = "Example_5.1.%d.jpeg")
	plot(density(data), main="Bimodal Gaussian mixture distribution density")
	hist(data,  main="Bimodal Gaussian mixture distribution histogram")
dev.off()

Ashmans_D(mu1,mu2,sd1,sd2)
bimodality_separation(mu1,mu2,sd1,sd2)




