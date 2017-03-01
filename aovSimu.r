rm(list=ls(all=TRUE))

n <- 45
b <- 1
sig_ep <- 1


e <- rnorm(n, mean = 0, sd = sig_ep)

x <- runif(n, min = 0, max = 1)

y <- (b*x) + e

formula <- y~x-1
plot(formula )
abline(lm(formula), col="red")

summary(lm(formula))
anova(lm(formula))
anova(lm(formula))[1,3]