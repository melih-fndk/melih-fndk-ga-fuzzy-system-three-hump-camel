# Genetik Algoritma Tabanlı Bulanık Sistem ile Three-Hump Camel Fonksiyonu Optimizasyonu

## Proje Hakkında
Bu projede, **Genetik Algoritma (GA)** kullanılarak eğitilen bir **Bulanık Çıkarım Sistemi (FIS)** ile 
**Three-Hump Camel fonksiyonunun** optimizasyonu gerçekleştirilmiştir. Çalışma, evrimsel algoritmalar 
ile bulanık mantık yaklaşımlarının birlikte kullanımını incelemektedir.

## Projenin Amacı
- Genetik algoritma kullanarak bir bulanık sistemin parametrelerini optimize etmek  
- Three-Hump Camel benchmark fonksiyonu üzerinde sistem performansını test etmek  
- Optimizasyon başarımı ve yakınsama davranışını analiz etmek  

## Kullanılan Yöntem
- **Genetik Algoritma (GA):** Parametre optimizasyonu için kullanılmıştır  
- **Bulanık Çıkarım Sistemi (FIS):** Doğrusal olmayan sistem modellemesi  
- **Eğitim Verileri:** MATLAB ortamında oluşturulmuş ve işlenmiştir  
- **Benchmark Fonksiyon:** Three-Hump Camel fonksiyonu  

## Kullanılan Teknolojiler
- MATLAB  
- Genetik Algoritmalar  
- Bulanık Mantık Sistemleri  
- Optimizasyon Yöntemleri  

##  Proje Dosya Yapısı
ga-fuzzy-system-three-hump-camel/
│
├── code/
│ ├── BM_22_064camel3.m
│ ├── BM_22_064dataGen.m
│ └── BM_22_064ga_fis_train.m
│
├── data/
│ ├── BM_22_064_Train.mat
│ └── BM_22_064_Train.xlsx
│
├── report/
│ └── BM_22_064_GA.pdf
│
└── README.md


## Çalıştırma Adımları
1. MATLAB programını açınız  
2. Proje klasörünü **Current Folder** olarak ayarlayınız  
3. Eğitim verilerini oluşturmak için:
   ```matlab
   BM_22_064dataGen

## Sonuçlar 
Geliştirilen genetik algoritma tabanlı bulanık sistem,
Three-Hump Camel fonksiyonunun optimizasyonunda başarılı sonuçlar üretmiş ve
etkin bir yakınsama davranışı sergilemiştir.
