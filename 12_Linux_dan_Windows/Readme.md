# Praktikum Xinu  
**Farrel Izaz Yuwono - 2311104014**  

## Praktikum Sistem Operasi – Modul 12 Linux dan Windows

---

## Dasar Teori

### 1. Sistem Operasi Windows
Windows adalah sistem operasi yang dikembangkan oleh Microsoft, dirancang dengan antarmuka grafis (GUI) yang sangat ramah pengguna (*user-friendly*). Windows sangat populer di kalangan pengguna umum, *gamer*, dan perkantoran karena dukungan kompatibilitas perangkat keras yang sangat luas dan kemudahan penggunaan tanpa memerlukan keahlian *command-line* yang mendalam.

### 2. Sistem Operasi Linux
Linux adalah sistem operasi berbasis Unix yang bersifat *open-source* (kode sumber terbuka). Linux sangat populer di kalangan *developer*, administrator server, dan keperluan riset karena tingkat keamanannya yang tinggi, sangat stabil, dan dapat dimodifikasi sebebas mungkin. Ada banyak varian (distro) Linux seperti Ubuntu, Debian, dan CentOS.

---

## Jawaban Pertanyaan Jurnal

**1. Jelaskan dengan bahasa sendiri, apa itu Sistem Operasi?**
Sistem Operasi (OS) adalah perangkat lunak tingkat dasar yang bertugas untuk mengelola seluruh sumber daya perangkat keras (hardware) dan perangkat lunak (software) pada komputer. Sistem operasi bertindak sebagai jembatan atau perantara antara pengguna (user) dengan perangkat keras komputer, sehingga pengguna dapat menjalankan berbagai aplikasi dengan mudah tanpa harus memahami bahasa mesin.

**2. Buka dxdiag pada kolom search windows, dan jawab pertanyaan berikut!**
a. **Windows apakah yang diinstal?**
   Windows 11 Home Single Language.
b. **Berapa bit Windows yang diinstall?**
   64-bit.
c. **Berapa kecepatan processor yang digunakan?**
   ~2.9 GHz (AMD Ryzen 7 4800H with Radeon Graphics).
d. **Grafik yang digunakan versi berapa? Apakah sudah sesuai spesifikasi?**
   Grafik yang digunakan mendukung DirectX 12. Ya, grafis ini sudah sangat sesuai dan jauh melebihi spesifikasi minimum/rekomendasi pada modul.

*(Sertakan Screenshot dxdiag di bawah ini)*
![Screenshot dxdiag](/12_Linux_dan_Windows/dxdiag.png)

**3. Apa kelebihan dari windows yang terpasang sekarang? Sebutkan versi terbaru saat ini!**
- **Kelebihan:** Memiliki antarmuka pengguna (GUI) yang sangat *user-friendly* dan modern, dukungan *software* dan *game* yang sangat luas (kompatibilitas tinggi), kemudahan dalam manajemen *driver* perangkat keras otomatis, serta memiliki fitur keamanan bawaan (Windows Defender) yang solid.
- **Versi Windows terbaru saat ini:** Windows 11.

**4. Buka virtualbox, dan jawab pertanyaan berikut!**
a. **Linux apakah yang diinstall?**
   Debian / Ubuntu (berdasarkan profil VirtualBox tertulis Debian 64-bit).
b. **Berapa bit Linux yang diinstall?**
   64-bit.
c. **Berapa ukuran hard disk virtual mesin?**
   50 GB (51200 MB).
d. **Terdapat berapa buah partisi pada hard disk?**
   Terdapat 2 partisi utama (Partisi Root/System dan Partisi Swap).

*(Sertakan Screenshot VirtualBox di bawah ini)*
![Screenshot VirtualBox](/12_Linux_dan_Windows/virtualbox.png)

**5. Linux memiliki berbagai jenis, sebutkan 5 jenis linux distro!**
1. Ubuntu
2. Debian
3. Fedora
4. Linux Mint
5. Kali Linux

**6. Anda sudah mengenal dan menggunakan 3 jenis sistem operasi pada praktikum ini, sebutkan sistem operasi tersebut!**
1. **Windows** (sebagai Host OS utama di laptop)
2. **Linux Ubuntu** (sebagai Guest OS di dalam VirtualBox / *development system*)
3. **Xinu** (sebagai sistem operasi *embedded* / *backend system*)

**7. Setelah mengenal 3 jenis sistem operasi tersebut, menurut Anda sistem operasi mana yang lebih mudah digunakan? Jelaskan argumentasi Anda!**
Menurut saya, **Windows** adalah sistem operasi yang paling mudah digunakan. Hal ini dikarenakan Windows memiliki *Graphical User Interface* (GUI) yang sangat intuitif dan dirancang untuk pengguna umum. Konfigurasi sistem, instalasi aplikasi, hingga manajemen file dapat dilakukan hanya dengan beberapa klik *mouse*. Sebaliknya, Linux Ubuntu masih sering mengandalkan terminal (Command Line) untuk konfigurasi mendalam atau instalasi paket tertentu, sedangkan Xinu sepenuhnya dioperasikan melalui Command Line murni karena memang dirancang khusus untuk keperluan riset dan sistem tertanam (*embedded system*).
