rm(list=ls(all=TRUE))

	
regSimu <- function(m=3, sig_ep=1, min=0, max=10, b0=7, b1=3){
	e <- rnorm(m, mean = 0, sd = sig_ep)

	x <- runif(m, min=min, max=max)
	ypop <- (b1*x + b0)
	y <- ypop + e
	
	model <- lm(y~x)
	RMSE <- sqrt(anova(model)[2,3])
	
	result <- c(coef(model), RMSE)
	names(result) <- c("Beta-Zero","Beta-One", "Sigma-Epsilon-Hat")

	result
	
}

regModel <- function(n=45, m=3, sig_ep=1, min=0, max=10, b0=7, b1=3){
	count <- 1
	sampleMatrix <-matrix(nrow = 0, ncol = 3)
	
	while(count <= n){
		sampleMatrix <- rbind(sampleMatrix ,regSimu())
	count <- count + 1
	}

	
	sampleMatrix
}


x<-regModel(n=400, m=400, min=0, max=10, b0=7, b1=3,sig_ep=1)

#mean(x[,1]);mean(x[,2]);mean(x[,3])

