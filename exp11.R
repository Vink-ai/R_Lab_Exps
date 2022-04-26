Normal Deviaton:
set.seed(100)
norm <- rnorm(100)
norm[1:10]
mean(norm)
sd(norm)
median(norm)

Exponential Deviation: Copy paste the code

dexp(1) - exp(-1) #-> 0

## a fast way to generate *sorted*  U[0,1]  random numbers:
rsunif <- function(n) { n1 <- n+1
   cE <- cumsum(rexp(n1)); cE[seq_len(n)]/cE[n1] }
plot(rsunif(1000), ylim=0:1, pch=".")
abline(0,1/(1000+1), col=adjustcolor(1, 0.5))

or

set.seed(1)
par(mfrow=c(2,2))
set.seed(1)
hist(rexp(10))
hist(rexp(100))
hist(rexp(1000))
hist(rexp(10000))
