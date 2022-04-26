# pnorm gives the cumulative probability (i.e. prob. that value is less than some value).
pnorm(3.0, 5,2)

# Because pnorm gives the probability that X is *less than* some value,
# we need the inverse.
# Solution 1 : use 'lower.tail=FALSE'
pnorm(4.5, 5,2, lower.tail=FALSE)

# Solution 2 : calculate the complement (because total probability must be 1!)
1-pnorm(4.5,5,2)

# qnorm is the opposite of pnorm. Given a probability, find K so that the probability
# of X is less than K is equal to that probability. Note that the default of qnorm
# is to find the probability *less than* some value. We therefore need the inverse.
# Because total probability is 1,
# P(X > K) = 0.05 is the same as P(X < K) = 1-0.05
qnorm(0.95, 5, 2)

## [1] 8.289707
# Or, use lower.tail=FALSE
qnorm(0.05, 5, 2, lower.tail=FALSE)

# dbinom finds the probability of 'x' occurrences (0 in this case) when we
# repeat N ('size') events (here, 10), each with probability 'prob' (here, 0.5).
dbinom(x = 0, size = 10, prob = 0.5)

# Same as before, but now K=5.
dbinom(x = 5, size = 10, prob = 0.5)

# Here we can use the cumulative probability, but realizing that the default gives us
# the probability of *less than* the given number of events.
1-pbinom(q=7, size=10, prob=0.5)
