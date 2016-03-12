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


```


Example 1.5
```language-R


```
![Example 1.5.1] (Images/Example_1.5.1.jpeg)
![Example 1.5.1] (Images/Example_1.5.2.jpeg)

```


```


