
?Quotes #escape characters

###########

?add1 
?deviance 
?formula 
?predict 
?step
?alias 
?drop1 
?kappa 
?print 
?summary
?anova 
?effects 
?labels 
?proj 
?vcov
?coef 
?family 
?plot 
?residuals


####

?anova(object_1, object_2)
#Compare a submodel with an outer model and produce an analysis of variance table.


?coef(object)
#Extract the regression coefficient (matrix).
#Long form: coefficients(object).

?deviance(object)
#Residual sum of squares, weighted if appropriate.

?formula(object)
#Extract the model formula.

?plot(object)
#Produce four plots, showing residuals, fitted values and some diagnostics.

?predict(object, newdata=data.frame)
#The data frame supplied must have variables specified with the same labels as the
#Original. The value is a vector or matrix of predicted values corresponding to the
#determining variable values in data.frame.

?print(object)
#Print a concise version of the object. Most often used implicitly.

?residuals(object)
#Extract the (matrix of) residuals, weighted as appropriate.
#Short form: resid(object).

?step(object)
#Select a suitable model by adding or dropping terms and preserving hierarchies. The
#model with the smallest value of AIC (Akaike’s An Information Criterion) discovered
#in the stepwise search is returned.

?summary(object)
#Print a comprehensive summary of the results of the regression analysis.

?vcov(object)
#Returns the variance-covariance matrix of the main parameters of a fitted model object.