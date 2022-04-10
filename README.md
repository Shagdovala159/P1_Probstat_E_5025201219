<div id="top"></div>

# P1_Probstat_E_5025201219
Repository untuk pengerjaan Praktikum 1 mata kuliah Probabilitas dan Statistik 2022.


| Nama                      | NRP        |
|---------------------------|------------|
| Antonio Taifan Montana    | 5025201219 |

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Daftar isi</summary>
  <ol>
    <li>
      <a href="#soal-1">Soal 1</a>
      <ul>
        <li><a href="#1a">1.a</a></li>
      </ul>
      <ul>
        <li><a href="#1b">1.b</a></li>
      </ul>
      <ul>
        <li><a href="#1c">1.c</a></li>
      </ul>
      <ul>
        <li><a href="#1d">1.d</a></li>
      </ul>
      <ul>
        <li><a href="#1e">1.e</a></li>
      </ul>
    </li>
    <li>
      <a href="#soal-2">Soal 2</a>
      <ul>
        <li><a href="#2a">2.a</a></li>
      </ul>
      <ul>
        <li><a href="#2b">2.b</a></li>
      </ul>
      <ul>
        <li><a href="#2c">2.c</a></li>
      </ul>
    </li>
    <li>
      <a href="#soal-3">Soal 3</a>
      <ul>
        <li><a href="#3a">3.a</a></li>
      </ul>
      <ul>
        <li><a href="#3b">3.b</a></li>
      </ul>
      <ul>
        <li><a href="#3c">3.c</a></li>
      </ul>
    </li>
    <li>
      <a href="#soal-4">Soal 4</a>
            <ul>
        <li><a href="#4a">4.a</a></li>
      </ul>
      <ul>
        <li><a href="#4b">4.b</a></li>
      </ul>
      <ul>
        <li><a href="#4c">4.c</a></li>
      </ul>
    </li>
    <li>
      <a href="#soal-5">Soal 5</a>
            <ul>
        <li><a href="#5a">5.a</a></li>
      </ul>
      <ul>
        <li><a href="#5b">5.b</a></li>
      </ul>
      <ul>
        <li><a href="#5c">5.c</a></li>
      </ul>
    </li>
    <li>
      <a href="#soal-6">Soal 6</a>
          <ul>
        <li><a href="#6a">6.a</a></li>
      </ul>
      <ul>
        <li><a href="#6b">6.b</a></li>
      </ul>
      <ul>
        <li><a href="#6c">6.c</a></li>
      </ul>
    </li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.


### 1.a
- Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi?
    
    Soal 1.a bisa diselesaikan dengan fungsi dgeom() dengan x = 3 dan p = 0.2. Dan didapatkan hasil yaitu 0.1024
    
    ```R
    p = 0.20
    x = 3
    # 1.A
    a <- dgeom(x = x, prob = p)
    ```
    
    Screenshot
    ![ss1][ss1a]
 
 <p align="right">(<a href="#top">back to top</a>)</p>
 
 ### 1.b
 - mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
 Soal 1.a bisa diselesaikan dengan mean dan fungsi dgeom() dengan n = 10000(data random), 3 sebagai X, dan p = 0.2. Dan didapatkan hasil yaitu 0.1078
    
    ```R
    p = 0.20
    x = 3
    # 1.B
    b <- mean(rgeom(n = 10000, prob = p) == 3)
    ```
    
   Screenshot 
   ![ss1][ss1b]
    
   <p align="right">(<a href="#top">back to top</a>)</p>

 ### 1.c
 - Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
 
   Kedua poin tersebut menghasilkan hasil yang berbeda. Pada poin A, dilakukan distribusi Geomterik biasa dan didapatkan nilai sebesar . Nilai tersebut merupakan nilai terbesar dari peluang-peluang yang dapat terjadi pada kejadian tersebut. Sedangkan pada poin B, didapatkan hasil sebesar karena merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A.
  
  <p align="right">(<a href="#top">back to top</a>)</p>
  
 ### 1.d
  - Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

Untuk membuat histogram distribusi Geometrik, digunakan fungsi plot() dengan parameter fungsi distribusi Geometrik seperti yang telah dilakukan pada poin-poin sebelumnya.

  ```R
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
   ```
  
  Screenshot 
  ![ss1][ss1d]
  
  <p align="right">(<a href="#top">back to top</a>)</p>
  
  ### 1.e
  - Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
   
   Untuk mendapatkan nilai rataan menggunakan formula banyak data dikali dengan peluang kejadian.
    ```R
    p = 0.20
    rataan <- 1 / p
    ```
    
   Untuk mendapatkan nilai varian menggunakan formula nilai rataan dan dikali dengan komplemen dari peluang kejadian.
    
    ```R
    p = 0.20
    varian <- (1 - p) / p^2
    ```
  Screenshot 
  ![ss1][ss1er]
  ![ss1][ss1ev]
  
 <p align="right">(<a href="#top">back to top</a>)</p>
 
## Soal 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
  kita dapat menentukan variable yang diketahui
 
    ```R
    n = 20
    p = 0.2
    q = 0.8
    x = 4
    ```

 ### 2.a
 - Peluang terdapat 4 pasien yang sembuh.
 
   Berikut Fungsi mencari Peluang terdapat 4 pasien sembuh dengan menggunakan dbinom().
    ```R
    # 2.a
    res <- dbinom(x,n, prob = p)
    ```
    Screenshot 
  ![ss1][ss2a]
  <p align="right">(<a href="#top">back to top</a>)</p>
  
 ### 2.b
 - Gambarkan grafik histogram berdasarkan kasus tersebut.
 
   Berikut Fungsi untuk membuat grafik histogram dengan menggunakan hist().
     ```R
    #2.b
    probability = dbinom(x, n, prob = p, log = FALSE)
    probability
    hist(rbinom(x, n, prob = p), xlab = "x", ylab = "Frekuensi", main = "Histogram of Binomial")
    ```
      Screenshot 
  ![ss1][ss2b]

  
  <p align="right">(<a href="#top">back to top</a>)</p>
  
 ### 2.c
 - Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
 
    ```R
    #2.c
    rataan <- n * p
    ```
    
    ```R
    varian <- n * p * q
    ```
    
     Screenshot 
  ![ss1][ss2cr]
  ![ss1][ss2cv]
  
  <p align="right">(<a href="#top">back to top</a>)</p>
  
  ## Soal 3
> Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
 ### 3.a
 - Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
 
   Berikut Fungsi mencari Peluang 6 bayi akan lahir di rumah sakit ini besok dengan menggunakan dpois().
    ```R
    x <- dpois(6, 4.5)
    ```
    Screenshot 
  ![ss1][ss3a]
  
  <p align="right">(<a href="#top">back to top</a>)</p>
  
   ### 3.b
 - simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365).
 
   Berikut Fungsi membuat histogram  kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun  dengan menggunakan geom_histogram().

    ```R
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
    ```
   Screenshot 
  ![ss1][ss3b]
  <p align="right">(<a href="#top">back to top</a>)</p>
  
   ### 3.c
 - Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
 
  <p align="right">(<a href="#top">back to top</a>)</p>
  
   ### 3.d
 - Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson
 
   Karena μ dan σ² sama dengan lambda maka
    ```R
    rataan <- lambda = 4.5
    varian <- lambda = 4.5
    ```
    Screenshot 
  ![ss1][ss3dr]
  ![ss1][ss3dv]
  <p align="right">(<a href="#top">back to top</a>)</p>
  
  
  ## Soal 4
> Diketahui nilai x = 2 dan v = 10. Tentukan:
   ### 4.a
 - Fungsi Probabilitas dari Distribusi Chi-Square
 Berikut Fungsi mencari Probabilitas dari Distribusi Chi-Square dengan menggunakan dchisq().
 
     ```R
    x = 2
    v = 10
    probability = dchisq(x, 10)
    probability
    ```
    Screenshot 
  ![ss1][ss4a]
  <p align="right">(<a href="#top">back to top</a>)</p>
  
   ### 4.b
 - Histogram dari Distribusi Chi-Square dengan 100 data random
 Berikut Fungsi membuat histogram Distribusi Chi-Square dengan 100 data random dengan menggunakan curve().
 
    ```R
    x <- rchisq(100, df = 10)

    hist(x, 
     freq = FALSE, 
     xlim = c(0,31), 
     ylim = c(0,0.2))

    curve(dchisq(x, df = 10), from = 0, to = 305, 
      n = 100, col= 'red', lwd=2, add = T)
    ```
   Screenshot 
  ![ss1][ss4b]
  <p align="right">(<a href="#top">back to top</a>)</p>
  
   ### 4.c
 - Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
 
    ```R
    rataan = v
    varian = 2 * v
    ```
    Screenshot 
  ![ss1][ss4cr]
  ![ss1][ss4cv]
 
  <p align="right">(<a href="#top">back to top</a>)</p>
  
  ## Soal 5
> Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
   ### 5.a
 - Fungsi Probabilitas dari Distribusi Exponensial
  Berikut Fungsi mencari Probabilitas dari Distribusi Exponensial dengan menggunakan dexp().
 
     ```R
    lambda = 3

    set.seed(1)
    rnorm(1)
    probability = dexp(1, rate = lambda)
    probability
    ```
   Screenshot 
  ![ss1][ss5a]
 
  <p align="right">(<a href="#top">back to top</a>)</p>
  
   ### 5.b
 - Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
 Berikut Fungsi membuat histogram Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random dengan menggunakan hist().
 
    ``R
    par(mfrow=c(2,2))
    set.seed(1)
    hist(rexp(10,3))
    hist(rexp(100,3))
    hist(rexp(1000,3))
    hist(rexp(10000,3))
    ```
  Screenshot 
  ![ss1][ss5b]
  <p align="right">(<a href="#top">back to top</a>)</p>
  
   ### 5.c
 - Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
 
    ```R
    n = 100
    lambda = 3 
    simnum <- 100
    simdata <- matrix(rexp(simnum * n, rate=lambda), simnum)
    sim_rowmean <- apply(simdata,1,mean)
    simdata_mean <- mean(sim_rowmean)
    sim_var <- var(sim_rowmean)
    ```
    Screenshot 
  ![ss1][ss4cr]
  ![ss1][ss4cv]
 
  <p align="right">(<a href="#top">back to top</a>)</p>
  
  ## Soal 6
> Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
  
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
 
[ss1a]: img/1a.png
[ss1b]: img/1b.png
[ss1d]: img/1d.png
[ss1er]: img/1e%20rataan.png
[ss1ev]: img/1e%20varian.png
[ss2a]: img/2a.png
[ss2b]: img/2b.png
[ss2cr]: img/2c%20rataan.png
[ss2cv]: img/2c%20varian.png
[ss3a]: img/3a.png
[ss3b]: img/3b.png
[ss3dr]: img/3d%20rataan.png
[ss3dv]: img/3d%20varian.png
[ss4a]: img/4a.png
[ss4b]: img/4b.png
[ss4cr]: img/4c%20rataan.png
[ss4cv]: img/4c%20varian.png
[ss5a]: img/5a.png
[ss5b]: img/5b.png
[ss5cr]: img/5c%20rataan.png
[ss5cv]: img/5c%20varian.png
[ss6a]: img/6a.png
[ss6b]: img/6b.png
[ss6c]: img/6c.png
    
