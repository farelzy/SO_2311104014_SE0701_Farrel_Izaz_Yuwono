# Praktikum Xinu  
**Farrel Izaz Yuwono - 2311104014**  

## Praktikum Sistem Operasi – Modul 15 Keamanan

---

### 1. Integritas: Dasar Hashing [10 Point]

**a. [2 Point] Lakukan hash SHA256, SHA512 dan MD5 untuk file /etc/passwd. Berapa nilai hash dari file /etc/passwd?**
- **SHA256**: `7c61e343e36f92adc82dd38ec91a0101b658cbe5e2a5aeeb302366b772b91f06`
- **SHA512**: `89aeaaa8f918197e788b831a4876b251c9d91800f39b1f9ef578802b1b7734ab18753fdd67a5516eba05d4fb9a1bdb91713e5f3fd7f5e311593bd7ddc3a4b457`
- **MD5**: `5eb5dd46ca9dd5af43f99dd38e34c8d4`

*(Screenshot)*:
![Screenshot 1a](/15_Keamanan_Linux/soal_1a.png)

**b. [2 Point] Buatlah file bernama test_0.txt pada folder /home/praktikan. Isi file tersebut isi yang ada di file /etc/passwd.**
*(Screenshot)*:
![Screenshot 1b](/15_Keamanan_Linux/soal_1b.png)

**c. [2 Point] Lakukan hash SHA256, SHA512 dan MD5 untuk file test_0.txt. Berapa nilai hash dari file test_0.txt?**
- **SHA256**: `7c61e343e36f92adc82dd38ec91a0101b658cbe5e2a5aeeb302366b772b91f06`
- **SHA512**: `89aeaaa8f918197e788b831a4876b251c9d91800f39b1f9ef578802b1b7734ab18753fdd67a5516eba05d4fb9a1bdb91713e5f3fd7f5e311593bd7ddc3a4b457`
- **MD5**: `5eb5dd46ca9dd5af43f99dd38e34c8d4`

*(Screenshot)*:
![Screenshot 1c](/15_Keamanan_Linux/soal_1c.png)

**d. [2 Point] Rename file test_0.txt menjadi file_0.txt. Lakukan hash SHA256, SHA512 dan MD5 untuk file_0.txt. Berapa nilai hash file_0.txt?**
- **SHA256**: `7c61e343e36f92adc82dd38ec91a0101b658cbe5e2a5aeeb302366b772b91f06`
- **SHA512**: `89aeaaa8f918197e788b831a4876b251c9d91800f39b1f9ef578802b1b7734ab18753fdd67a5516eba05d4fb9a1bdb91713e5f3fd7f5e311593bd7ddc3a4b457`
- **MD5**: `5eb5dd46ca9dd5af43f99dd38e34c8d4`

*(Screenshot)*:
![Screenshot 1d](/15_Keamanan_Linux/soal_1d.png)

> **Jawaban:** File `/etc/passwd`, `test_0.txt`, dan `file_0.txt` memiliki nilai hash yang **sama persis**. Hal ini membuktikan bahwa algoritma hashing menghitung nilai berdasarkan isi/konten file, bukan dari nama file atau lokasinya. Selama isi file tidak berubah satupun bit-nya, nilai hash dari file tersebut tidak akan berubah, meskipun namanya telah diubah (rename) dari test_0.txt menjadi file_0.txt.

---

### 2. Integritas: Avalance [15 Point]

**a. [3 Point] Download file bernama test_1.txt di link tiny.cc/test1_txt**
**b. [3 Point] Lakukan hash SHA256, SHA512 dan MD5 untuk file test_1.txt. Berapa nilai hash test_1.txt?**
- **SHA256**: `ab12522f06c64332f5836860a726d71155c16876bb1195c326390211dac717f3`
- **SHA512**: `979bfeb1a1783c450ecaee0e388494e977c51af1ba3675fa174c2c3c7404bd081b1b2cd800980ebe29caddba3f8dee98def0188ffc338c5fb5a0cf6b54edc48f`
- **MD5**: `779dd779ff62b5c02981ec7fb699d9e5`

*(Screenshot)*:
![Screenshot 2b](/15_Keamanan_Linux/soal_2b.png)

**c. [3 Point] Hapuslah titik diakhir file test_1.txt tersebut, simpan file tersebut!**
**d. [3 Point] Lakukan hash dari SHA256, SHA512 dan MD5. Screenshot nilai hash dari file test_1.txt.**
- **SHA256**: `c42e7309d8b5d2e7f1cd7b74b7f9d9e8011dce16fd8640f563a5532d89d83473`
- **SHA512**: `b7bc6af838f6163db1640631376c09051306f6a85eb4246ab1721c477bfe929163b2ade0483f2ce10cbef3a5f434017ffaff3b5246f03525f82a26444ddf143d`
- **MD5**: `300b95a3c347ae374d8413b4587dc475`

*(Screenshot)*:
![Screenshot 2d](/15_Keamanan_Linux/soal_2d.png)

**e. [3 Point] Apa analisis (hasil pengamatan) Anda mengenai hal tersebut! Apakah nilai hash sama?**
> **Jawaban:** Nilai hash menjadi **berbeda total** (sama sekali tidak mirip dengan hash sebelumnya), padahal kita hanya menghapus satu karakter (tanda titik) dari isi file. Fenomena ini disebut dengan **Efek Avalanche (Avalanche Effect)**, di mana perubahan sekecil apa pun pada input (bahkan hanya 1 byte/bit) akan menyebabkan perubahan yang drastis dan acak pada hasil (output) hash-nya. Hal ini membuktikan bahwa hash sangat efektif untuk mendeteksi perubahan sekecil apa pun pada data (cek integritas data).

---

### 3. Integritas: Metadata [18 Point]

**a. [3 Point] Download file bernama test_1.doc di link tiny.cc/test1_doc**
**b. [3 Point] Lakukan hash SHA256, SHA512 dan MD5 untuk file test_1.doc.**
- **SHA256**: `220e005fce8cfe592fcb80ac1f57785518c6f9c4b993b68d8c0f78030a97bae9`
- **SHA512**: `8d14a9d3501a7305095cbedb03450d5129485ccebf31362b9958a74c345ebf5cb187ad6f42717964adad70e900f051bf89d9e1b01d6340f9a82176745a4d5a57`
- **MD5**: `74f33b9df7c8f905a135b1dcdf23e0db`
*(Screenshot)*:
![Screenshot 3b](/15_Keamanan_Linux/soal_3b.png)

**c. [3 Point] Ketik abcdef. Save test_1.doc**
**d. [3 Point] Hapus abcdef. Save test_1.doc**
**e. [3 Point] Lakukan hash SHA256, SHA512 dan MD5 untuk file test_1.doc.**
- **SHA256**: `284830b18c973c7f6043d8f8f9ae2c5d5e897876f71784c9ce64b079af579263`
- **SHA512**: `79506633afd6920b973f709d9bc153f0a17705b865a6741d2285051c4676cd8333b5c2674484fbe9a1363e4ec51b282a6fed5f1b21823714e49dc2361ef844e0`
- **MD5**: `31c3521cca85390e148d781d1462f849`
*(Screenshot)*:
![Screenshot 3e](/15_Keamanan_Linux/soal_3e.png)

**f. [3 Point] Hasil pengamatan apa yang diperoleh? Jelaskan alasannya!**
> **Jawaban:** Nilai hash pada file doc tersebut **berubah** setelah teks diketik lalu dihapus dan disave kembali. Meskipun secara visual/tampilan teks dalam dokumen tersebut terlihat sama seperti awal (tidak ada teks 'abcdef' lagi), namun aplikasi pengolah kata (seperti MS Word / LibreOffice) menyimpan **metadata** ke dalam file secara otomatis setiap kali kita melakukan *Save*. Metadata ini meliputi waktu modifikasi (Date Modified), log revisi, jumlah waktu edit, dll. Karena metadatanya berubah, struktur binary dari file tersebut juga berubah, yang berakibat pada berubahnya nilai hash.

---

### 4. Konfidensialitas: Encfs [27 Point]

**a. [5 Point] Jalankan perintah `encfs ~/folder_anda/folder_terenkripsi ~/folder_anda/folder_normal`**
*(Screenshot)*:
![Screenshot 4a](/15_Keamanan_Linux/soal_4a.png)

**b. [5 Point] Copy dua atau tiga buah file ke folder_normal. Amati dan tulis hasil observasi Anda pada folder_terenkripsi!**
> **Jawaban:** File-file yang disalin ke `folder_normal` akan muncul secara otomatis di dalam `folder_terenkripsi`. Namun, di dalam `folder_terenkripsi`, nama file-file tersebut telah diacak (enkripsi) menjadi kumpulan karakter yang tidak beraturan, dan isinya pun menjadi terenkripsi sehingga tidak dapat dibaca secara langsung.

*(Screenshot)*:
![Screenshot 4b](/15_Keamanan_Linux/soal_4b.png)

**c. [5 Point] Hapus salah satu file pada folder_terenkripsi. Amati dan tulis hasil observasi Anda pada folder_normal!**
> **Jawaban:** File yang bersesuaian di `folder_normal` akan ikut terhapus. Hal ini terjadi karena `folder_normal` pada dasarnya hanyalah virtual mount (antarmuka dekripsi) dari `folder_terenkripsi`. Keduanya saling terhubung secara sinkron, sehingga perubahan di folder satu akan langsung tercermin di folder yang lain.

*(Screenshot)*:
![Screenshot 4c](/15_Keamanan_Linux/soal_4c.png)

**d. [5 Point] Lakukan umount dengan perintah `fusermount -u ~/folder_anda/folder_normal`. Amati dan tulis hasil observasi Anda!**
> **Jawaban:** Setelah dilakukan proses umount, `folder_normal` akan terlihat kosong dan kita tidak bisa lagi melihat file yang ada. Namun file aslinya masih tersimpan dengan aman di `folder_terenkripsi` dalam keadaan terenkripsi. Hal ini menunjukkan bahwa file kita aman saat sedang tidak di-mount dan dilindungi oleh *password*.

*(Screenshot)*:
![Screenshot 4d](/15_Keamanan_Linux/soal_4d.png)

**e. [7 Point] Buat folder bernama folder_sembarang. Jalankan `encfs ~/folder_anda/folder_terenkripsi ~/folder_anda/folder_sembarang`. Amati dan tulis hasil observasi Anda!**
> **Jawaban:** Setelah memasukkan password Encfs yang benar, file-file tersebut akan kembali terlihat dan bisa dibaca di dalam `folder_sembarang` (seperti saat berada di `folder_normal` sebelumnya). Hal ini menunjukkan bahwa folder apa pun bisa digunakan sebagai "titik mount" untuk mendekripsi isi folder terenkripsi asalkan kita memiliki akses ke direktori yang terenkripsi tersebut dan mengetahui password enkripsinya.

*(Screenshot)*:
![Screenshot 4e](/15_Keamanan_Linux/soal_4e.png)

---

### 5. Konfidensialitas: GPG [30 Point]

**a. [5 Point] Membuat kunci publik dan privat dengan perintah `gpg --gen-key`**
**b. [5 Point] Lakukan perintah `gpg --list-keys` dan `gpg --fingerprint`**
*(Screenshot)*:
![Screenshot 5b](/15_Keamanan_Linux/soal_5b.png)

**c. [5 Point] Export kunci publik (mypublic_key.asc), rename jadi nim_anda.asc**
*(Screenshot)*:
![Screenshot 5c](/15_Keamanan_Linux/soal_5c.png)

**d. [5 Point] Mengimport kunci publik orang lain (gpg --import)**
*(Screenshot)*:
![Screenshot 5d](/15_Keamanan_Linux/soal_5d.png)

**e. [5 Point] Enkripsi pesan (gpg --encrypt --armor -r ...) menjadi file_rahasia_untuk_teman_anda.asc**
*(Screenshot)*:
![Screenshot 5e](/15_Keamanan_Linux/soal_5e.png)

**f. [5 Point] Dekripsi pesan (gpg file_rahasia_nim_anda.asc)**
*(Screenshot)*:
![Screenshot 5f](/15_Keamanan_Linux/soal_5f.png)
