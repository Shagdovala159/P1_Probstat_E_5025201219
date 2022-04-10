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
        <ul>
        <li><a href="#1e">1.e</a></li>
      </ul>
      </ul>
    </li>
    <li>
      <a href="#soal-2">Soal 2</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
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
  <p align="right">(<a href="#top">back to top</a>)</p>
  ```
  Screenshot 
  ![ss1][ss1d]
  
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
 
   Kedua poin tersebut menghasilkan hasil yang berbeda. Pada poin A, dilakukan distribusi Geomterik biasa dan didapatkan nilai sebesar . Nilai tersebut merupakan nilai terbesar dari peluang-peluang yang dapat terjadi pada kejadian tersebut. Sedangkan pada poin B, didapatkan hasil sebesar karena merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A.
    ```R
    # 2.a
    res <- dbinom(x,n, prob = p)
    ```
  
  <p align="right">(<a href="#top">back to top</a>)</p>
  
 ### 2.b
 - Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
     ```R
    #2.b
    probability = dbinom(x, n, prob = p, log = FALSE)
    probability
    hist(rbinom(x, n, prob = p), xlab = "x", ylab = "Frekuensi", main = "Histogram of Binomial")
    ```
   Kedua poin tersebut menghasilkan hasil yang berbeda. Pada poin A, dilakukan distribusi Geomterik biasa dan didapatkan nilai sebesar . Nilai tersebut merupakan nilai terbesar dari peluang-peluang yang dapat terjadi pada kejadian tersebut. Sedangkan pada poin B, didapatkan hasil sebesar karena merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A.
  
  <p align="right">(<a href="#top">back to top</a>)</p>
 ### 2.c
 - Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
     ```R
     #2.c
    rataan <- n * p
    ```R
    varian <- n * p * q
    ```
   Kedua poin tersebut menghasilkan hasil yang berbeda. Pada poin A, dilakukan distribusi Geomterik biasa dan didapatkan nilai sebesar . Nilai tersebut merupakan nilai terbesar dari peluang-peluang yang dapat terjadi pada kejadian tersebut. Sedangkan pada poin B, didapatkan hasil sebesar karena merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A.
  
  <p align="right">(<a href="#top">back to top</a>)</p>
   
[ss1a]: img/1a.png
[ss1b]: img/1b.png
[ss1d]: img/1d.png
[ss1er]: img/1e%20rataan.png
[ss1ev]: img/1e%20varian.png
[ss1a]: img/1a.png
[ss1a]: img/1a.png
[ss1a]: img/1a.png
[ss1a]: img/1a.png
[ss1a]: img/1a.png
[ss1a]: img/1a.png
[ss1a]: img/1a.png
[ss1a]: img/1a.png
[ss1a]: img/1a.png
    
