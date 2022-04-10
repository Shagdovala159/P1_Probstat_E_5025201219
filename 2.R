n = 20
p = 0.2
q = 0.8
x = 4
# 2.a
res <- dbinom(x,n, prob = p)

#2.b
probability = dbinom(x, n, prob = p, log = FALSE)
probability
hist(rbinom(x, n, prob = p), xlab = "x", ylab = "Frekuensi", main = "Histogram of Binomial")

#2.c
rataan <- n * p

varian <- n * p * q