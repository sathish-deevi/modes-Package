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
 modes(data,type=2,digits=1,3)
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
 
 
![Example 1.5.1] (Images/Example_1.5.1.jpeg)
![Example 1.5.1] (Images/Example_1.5.2.jpeg)

```


```


