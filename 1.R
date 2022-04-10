p = 0.20
x = 3
# 1.A
a <- dgeom(x = x, prob = p)
# 1.B
b <- mean(rgeom(n = 10000, prob = p) == 3)

# 1.D
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 Kegagalan Sebelum Sukses Pertama",
       x = "Kegagalan sebelum kesuksesan pertama (x)",
       y = "Probabilitas") 
 # 1.E
rataan <- 1 / p
varian <- (1 - p) / p^2
