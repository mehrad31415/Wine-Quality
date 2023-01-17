qqnorm(red$quality, main='Normal')
qqline(red$quality)

```{r}
library(ISLR2)
View(red)
names(red)
dim(red)
sum(is.na(red$quality))
```

```{r}
library(leaps)
#regfit.full <- regsubsets(quality ~ ., red, method = "exhaustive", really.big = TRUE, nvmax = 12)
#summary_fullfit <- summary(regfit.full)
``
```{r}
red <- lapply(red,as.numeric)
red <- as.tibble(red)
regfit.full <- regsubsets(quality ~ ., data = red, method = "seqrep", nvmax = 12)
summary_fullfit <- summary(regfit.full)
plot(regfit.full, scale = "bic")
```

```{r}
coef(regfit.full, 7)
```

```{r}
summary_fullfit
```


```{r}
as.tibble(summary_fullfit$bic) %>%
  mutate (num = row_number()) %>%
  ggplot () +
  geom_line(mapping = aes (x = num, y = value))
```

```{r}
summary_fullfit$bic
```



```{r}
train <- sample(c(TRUE, FALSE), nrow(red),replace = TRUE)
```


```{r}
x <- red[sample(1:nrow(red)), ]
```

```{r}
train <- x [1: (4/5)*(nrow(x)),]
test  <- x [-train]
```




Selecting the best approach can be one of the most challenging parts of performing statistical learning in practice.



