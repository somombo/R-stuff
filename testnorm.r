n <- 4000000 #CLT as n increases mean gets to 0 and sd get's close to 1
x <- rnorm(n, mean=0, sd=1)

mean(x)
sd(x)