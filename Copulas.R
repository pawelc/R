require(mvtnorm)
S <- matrix(c(1,.8,.8,1),2,2) #Correlation matrix
AB <- rmvnorm(mean=c(0,0),sig=S,n=1000) #Our gaussian variables
U <- pnorm(AB) #Now U is uniform - check using hist(U[,1]) or hist(U[,2])
x <- qgamma(U[,1],2) #x is gamma distributed
y <- qbeta(U[,2],1,2) #y is beta distributed
plot(x,y) #They correlate!
