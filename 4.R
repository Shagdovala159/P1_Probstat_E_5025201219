x = 2
v = 10

probability = dchisq(x, 10)
probability

x <- rchisq(100, df = 10)

hist(x, 
     freq = FALSE, 
     xlim = c(0,31), 
     ylim = c(0,0.2))

curve(dchisq(x, df = 10), from = 0, to = 305, 
      n = 100, col= 'red', lwd=2, add = T)

rataan = v
varian = 2 * v