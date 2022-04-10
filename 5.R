lambda = 3

set.seed(1)
rnorm(1)
probability = dexp(1, rate = lambda)
probability

par(mfrow=c(2,2))
set.seed(1)
hist(rexp(10,3))
hist(rexp(100,3))
hist(rexp(1000,3))
hist(rexp(10000,3))

n = 100
lambda = 3 
simnum <- 100
simdata <- matrix(rexp(simnum * n, rate=lambda), simnum)
sim_rowmean <- apply(simdata,1,mean)
simdata_mean <- mean(sim_rowmean)
sim_var <- var(sim_rowmean)