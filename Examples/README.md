# Examples

## Nonparametric Examples

1. Mode examples

Example 1.1
```language-R
data<-c(rep(6,9),rep(3,3))
mode(data,type=1,"NULL","NULL")
```

![Example 1.1.1] (Images/Example_1.1.1.jpeg) 
![Example 1.1.1] (Images/Example_1.1.2.jpeg)

```
       [,1]
Value     6
Length    9
```

Example 1.2
```language-R
data<-c(rep(6,9),rep(3,9))
modes(data,type=1,"NULL","NULL")
```

![Example 1.2.1] (Images/Example_1.2.1.jpeg)
![Example 1.2.1] (Images/Example_1.2.2.jpeg)
```
       [,1] [,2]
Value     3    6
Length    9    9
```



Example 1.3
```language-R
data<-c(rep(6,9),rep(3,8),rep(7,7),rep(2,6))
modes(data,type=1,"NULL",2)
```

![Example 1.3.1] (Images/Example_1.3.1.jpeg)
![Example 1.3.1] (Images/Example_1.3.2.jpeg)

```
       [,1] [,2] [,3] [,4]
Value     6    3    7    2
Length    9    8    7    6
```

Example 1.4
```language-R


```
![Example 1.4.1] (Images/Example_1.4.1.jpeg)
![Example 1.4.1] (Images/Example_1.4.2.jpeg)

```
       [,1]
Value     0
Length   12

```


Example 1.5
```language-R
set.seed(1246)
data<-c(rep(6,3),rep(3,3),rnorm(15,0,1))
modes(data,3,NULL,4)
```
```
       [,1] [,2] [,3]                   [,4]                
Value  "3"  "6"  "-0.00528877744563036" "-0.265047873213653"
Length "3"  "3"  "1"                    "1"                 
       [,5]                 [,6]                 [,7]                
Value  "-0.383946266260758" "-0.503595358662098" "-0.890103993657086"
Length "1"                  "1"                  "1"                 
       [,8]                 [,9]                 [,10]              
Value  "-0.902559181415477" "-0.929018190441427" "-1.51710239243673"
Length "1"                  "1"                  "1"                
       [,11]               [,12]               [,13]              
Value  "0.196147751721519" "0.216425886134856" "0.400936002681914"
Length "1"                 "1"                 "1"                
       [,14]               [,15]               [,16]            
Value  "0.461525542956227" "0.541086638435628" "1.3029586964899"
Length "1"                 "1"                 "1"              
       [,17]             
Value  "1.34537915481889"
Length "1"               
Warning message:
In modes(data, 3, NULL, 4) : A single observation
         is being observed as a mode.
        Double check the class or inspect the data.
        Alternatively, you may have specified 'nmore' too many times 
        for this data.
```

```
 modes(data,type=2,digits=1,3)
```
```
        [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
Value  -0.9    3    6   -2 -0.5 -0.3  0.2  0.5
Length  3.0    3    3    1  1.0  1.0  2.0  2.0
Warning message:
In modes(data, type = 2, digits = 1, 3) : A single observation
         is being observed as a mode.
        Double check the class or inspect the data.
        Alternatively, you may have specified 'nmore' too many times 
        for this data.
```
 
![Example 1.5.1] (Images/Example_1.5.1.jpeg)
![Example 1.5.1] (Images/Example_1.5.2.jpeg)



Example 2.1
```language-R
set.seed(1246)
data<-c(rnorm(15,0,1),rnorm(21,5,1))
```

![Example 2.1.1] (Images/Example_2.1.1.jpeg) 
![Example 2.1.2] (Images/Example_2.1.2.jpeg)

```
> bimodality_amplitude(data,TRUE)
[1] 0.5343913
> bimodality_coefficient(data,TRUE)
[1] 0.8894365
> bimodality_ratio(data,FALSE)
Amplitude (y) 
     1.413765 
```
![Example 2.1.3] (Images/Example_2.1.3.jpeg)



Example 2.2
```language-R
set.seed(1246)
data<-c(rnorm(21,0,1),rnorm(21,5,1))

```

![Example 2.2.1] (Images/Example_2.2.1.jpeg) 
![Example 2.2.2] (Images/Example_2.2.2.jpeg)

```

> bimodality_amplitude(data,TRUE)
[1] 0.5569044
> bimodality_coefficient(data,TRUE)
[1] 0.880667
> bimodality_ratio(data,FALSE)
Amplitude (y) 
    0.9039876 
```
![Example 2.2.3] (Images/Example_2.2.3.jpeg)



Example 3.1
```language-R
set.seed(1246)
dist1<-rnorm(21,5,2)
dist2<-dist1+11
data<-c(dist1,dist2)



```

![Example 3.1.1] (Images/Example_3.1.1.jpeg) 
![Example 3.1.1] (Images/Example_3.1.2.jpeg)

```
> bimodality_amplitude(data,TRUE)
[1] 0.6894354
> bimodality_ratio(data,FALSE)
Amplitude (y) 
     1.000229 
     
```





![Example 3.1.3] (Images/Example_3.1.3.jpeg) 




Example 3.2
```language-R
set.seed(1246)
dist1<-rnorm(21,-15,1)
dist2<-rep(dist1,3)+30
data<-c(dist1,dist2)
```

![Example 3.2.1] (Images/Example_3.2.1.jpeg) 
![Example 3.2.1] (Images/Example_3.2.2.jpeg)

```
> bimodality_amplitude(data,TRUE)
[1] 1
> bimodality_ratio(data,FALSE)
Amplitude (y) 
     2.999414 

```

![Example 3.2.3] (Images/Example_3.2.3.jpeg) 





Example 3.3
```language-R
set.seed(1246)
dist1<-rep(7,70)
dist2<-rep(-7,70)
data<-c(dist1,dist2)


```

![Example 3.3.1] (Images/Example_3.3.1.jpeg) 
![Example 3.3.1] (Images/Example_3.3.2.jpeg)

```

> bimodality_ratio(data,FALSE)
Amplitude (y) 
            1 
```




Example 4.1
```language-R



```

![Example 4.1.1] (Images/Example_4.1.1.jpeg) 
![Example 4.1.1] (Images/Example_4.1.2.jpeg)

```

```





Example 5.1
```language-R



```

![Example 5.1.1] (Images/Example_5.1.1.jpeg) 
![Example 5.1.1] (Images/Example_5.1.2.jpeg)

```

```




Example 99.9
```language-R



```

![Example 1.1.1] (Images/Example_1.1.1.jpeg) 
![Example 1.1.1] (Images/Example_1.1.2.jpeg)

```

```
