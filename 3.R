x <- dpois(6, 4.5)

set.seed(2)

  data.frame('data' = rpois(365, 4.5)) %>% 
  ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Jumlah bayi yang lahir per periode',
       y = 'Proporsi',
       title = '365 simulasi kelahiran di rumah sakit dengan Pois(lambda = 4.5)') +
  theme_bw()
  
  rataan <- lambda = 4.5
  varian <- lambda = 4.5