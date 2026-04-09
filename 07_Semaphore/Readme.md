# Praktikum Xinu
Farrel Izaz Yuwono - 2311104014

Praktikum Sistem Operasi – Eksplorasi dan Modifikasi Xinu OS

---

## Dasar Teori
Xinu adalah sistem operasi sederhana yang digunakan untuk mempelajari konsep dasar sistem operasi seperti manajemen proses, memori, dan interaksi dengan hardware. Pada praktikum ini dilakukan eksplorasi source code serta modifikasi sederhana pada sistem.

---

## Tugas

### 1. Buatlah 3 buah proses yaitu P1, P2 dan P3. P1 selalu menampilkan “kwak”, P2 selalu menampilkan “kwik”, P3 selalu menampilkan “kwek”. Menggunakan 3 proses tersebut dan beberapa buah semaphore, buatlah program yang dapat menampilkan: 

[50 poin] 
Kwak
Kwik
Kwek
Kwak
Kwik
Kwek
…


![Hasil Run](/07_Semaphore/bebek.png)


---

### 2. Buatlah proses bernama produser yang memproduksi bilangan 1-1000. Buatlah proses bernama konsumer yang akan menampilkan nilai yang diproduksi oleh produser. Gunakan semaphore! 
[50 poin] 
Produser memproduksi nilai 1
Konsumer menampilkan nilai 1
Produser memproduksi nilai 2
Konsumer menampilkan nilai 2
….
Produser memproduksi nilai 1000
Konsumer menampilkan nilai 1000

![Hasil Run](/07_Semaphore/prodcon.png)

