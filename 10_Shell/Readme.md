# Praktikum Xinu  
**Farrel Izaz Yuwono - 2311104014**  

## Praktikum Sistem Operasi – Modul 10 Shell

## Dasar Teori  

### 1. Shell pada Xinu  
Shell merupakan antarmuka antara pengguna dan sistem operasi. Pada Xinu (Xinu Is Not Unix), shell berfungsi sebagai *command interpreter* yang menerima perintah dari pengguna dan menerjemahkannya menjadi eksekusi fungsi di dalam sistem.

Shell pada Xinu berjalan sebagai proses biasa (*user process*) yang menggunakan layanan kernel untuk menjalankan perintah. Perintah-perintah tersebut telah disediakan dalam bentuk fungsi, seperti `help`, `ps`, `kill`, dan lain-lain.

---

### 2. Cara Kerja Shell  
Secara umum, mekanisme kerja shell pada Xinu adalah sebagai berikut:
1. Menampilkan prompt kepada pengguna  
2. Menerima input perintah  
3. Melakukan parsing input menjadi nama perintah dan argumen  
4. Mencocokkan perintah dengan daftar yang tersedia  
5. Menjalankan fungsi yang sesuai  

Perintah yang tersedia disimpan dalam tabel perintah (*command table*) yang berisi nama perintah, deskripsi, dan fungsi yang akan dipanggil.

---

### 3. Modifikasi Shell  
Modifikasi shell adalah proses mengubah atau menambahkan fungsi baru pada shell Xinu. Hal ini dilakukan untuk memahami bagaimana sistem operasi menangani perintah dari pengguna.

Modifikasi dapat berupa:
- Penambahan perintah baru  
- Perubahan fungsi perintah yang sudah ada  
- Penambahan parameter pada perintah  
- Integrasi dengan system call baru  

---

### 4. Tujuan Modifikasi Shell  
Tujuan dari modifikasi shell pada Xinu adalah:
- Memahami interaksi antara user dan kernel  
- Melatih kemampuan pemrograman sistem  
- Mengetahui cara kerja command interpreter  
- Mengembangkan fitur baru dalam sistem operasi sederhana  


![Hasil Run](/10_Shell/modul.png)