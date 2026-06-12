# Praktikum Xinu  
**Farrel Izaz Yuwono - 2311104014**  

## Praktikum Sistem Operasi – Modul 13 Perintah Dasar Linux

---

## Dasar Teori

Linux menyediakan antarmuka baris perintah (CLI/Terminal) yang sangat *powerful* untuk berinteraksi dengan OS. Pengguna berinteraksi menggunakan Command Prompt dengan struktur format: `nama_perintah option parameter`. Selain itu, Linux juga mendukung berbagai mekanisme manipulasi aliran data seperti *Pipe* (`|`) untuk menggabungkan dua perintah, serta *Redirection* (`>` dan `>>`) untuk mengalihkan output ke sebuah file.

---

## I. Perintah-Perintah Dasar Linux

**1. Terminal**
a. *(Screenshot terminal)*
   ![Screenshot 1a](/13_Perintah_Dasar_Linux/soal_1.png)
b. **Jelaskan arti dari command prompt milik Anda!**
   Berdasarkan terminal praktikum (`relx@relzy:/etc$`), artinya adalah *username* yang sedang *login* adalah `relx`, berada pada perangkat keras/host bernama `relzy`, dan sedang berada di direktori `/etc`. Tanda `$` menunjukkan bahwa pengguna tersebut adalah *user* biasa (bukan root).

**2. Perintah Pertama**
a. *(Screenshot `ls`)*
   ![Screenshot 2a](/13_Perintah_Dasar_Linux/soal_2.png)
b. **Apakah option dan parameter dari perintah di atas?**
   Option: Tidak ada. Parameter: Tidak ada.
c. **Apa fungsi dari perintah tersebut?**
   Menampilkan daftar nama *file* dan direktori yang ada di direktori saat ini.
d. *(Screenshot `ls -al /`)*
   ![Screenshot 2d](/13_Perintah_Dasar_Linux/soal_2d.png)
e. **Apakah option dan parameter dari perintah di atas?**
   Option: `-al`. Parameter: `/`.
f. **Apa fungsi dari perintah tersebut?**
   Menampilkan seluruh daftar *file* (termasuk *file* tersembunyi / *all*) di dalam direktori root `/` beserta detail informasinya dalam format memanjang (long format).
g. **Mengapa perintah pada a dan e mempunyai hasil yang berbeda?**
   Karena perintah (a) dieksekusi tanpa parameter sehingga merujuk ke direktori saat ini, sedangkan (e) memuat parameter `/` sehingga merujuk ke lokasi *root*. Selain itu, perintah (e) memakai opsi `-al` yang memaksanya menampilkan detail ekstra (hak akses, pemilik) dan file rahasia (ditandai dengan titik) yang sebelumnya disembunyikan pada perintah (a).

**3. Pohon File**
a. *(Screenshot `pwd`)*
   ![Screenshot 3a](/13_Perintah_Dasar_Linux/soal_3a.png)
b. **Apakah option dan parameter dari perintah tersebut?**
   Option: Tidak ada. Parameter: Tidak ada.
c. **Apa fungsi perintah tersebut?**
   Mencetak direktori tempat kita berada saat ini (Print Working Directory) dalam bentuk *absolute path* dari *root*.

**4. Perpindahan**
a. *(Screenshot `cd /`)*
   ![Screenshot 4a](/13_Perintah_Dasar_Linux/soal_4a.png)
b. **Apakah option dan parameter dari perintah tersebut?**
   Option: Tidak ada. Parameter: `/`.
c. **Apa yang dilakukan perintah tersebut?**
   Memindahkan lokasi aktif (*current directory*) kita saat ini menuju ke direktori paling dasar yaitu direktori root (`/`).

**5. Direktori Khusus**
a. *(Screenshot `cd /` lalu `cd ~`)*
   ![Screenshot 5a](/13_Perintah_Dasar_Linux/soal_5a.png)
   **Jelaskan hasilnya:** Perintah `cd /` memindahkan kita ke direktori *root*. Sedangkan perintah `cd ~` akan langsung melemparkan/mengembalikan kita ke direktori *home* milik *user* yang bersangkutan (misal `/home/relx`).
b. *(Screenshot 5b)*
   ![Screenshot 5b](/13_Perintah_Dasar_Linux/soal_5b.png)
   **Berapa kali `cd ..` harus dieksekusi?** Perintah `cd ..` harus dieksekusi sebanyak **2 kali**.

**6. Copy, rename, dan delete file**
a. **Copylah file dari /proc/cpuinfo ke folder home Anda:**
   Perintah: `cp /proc/cpuinfo /home/relx/`
b. **Tunjukkan menggunakan perintah bahwa file tersebut benar-benar telah dicopy:**
   Perintah: `ls -al /home/relx/cpuinfo`
c. **Copy file dari /proc/uptime ke folder home Anda:**
   Perintah: `cp /proc/uptime /home/relx/`
d. **Tunjukkan menggunakan perintah bahwa file tersebut benar-benar telah dicopy:**
   Perintah: `ls -al /home/relx/uptime`
e. **Hapuslah file uptime di folder home Anda:**
   Perintah: `rm /home/relx/uptime`
f. **Tunjukkan menggunakan perintah bahwa file tersebut benar-benar telah dihapus:**
   Perintah: `ls -al /home/relx/uptime`
g. **Rename file cpuinfo di folder home Anda menjadi infocpu:**
   Perintah: `mv /home/relx/cpuinfo /home/relx/infocpu`

*(Screenshot keseluruhan proses copy, rename, dan hapus)*
![Screenshot 6](/13_Perintah_Dasar_Linux/soal_6.png)

**7. Membuat folder baru**
*(Secara berurutan mulai dengan cd ~)*
a. **Buatlah folder baru dengan nama "nim_anda":**
   Perintah: `mkdir 2311104014`
b. **Buatlah di dalam folder "nim_anda", folder baru dengan nama "nama_anda":**
   Perintah: `mkdir 2311104014/farrel_izaz_yuwono`

*(Screenshot proses pembuatan folder)*
![Screenshot 7](/13_Perintah_Dasar_Linux/soal_7.png)

**8. Membaca Manual**
a. *(Screenshot `man ls`)*
   ![Screenshot 8a](/13_Perintah_Dasar_Linux/soal_8a.png)
b. **Apa fungsi perintah "ls"?**
   *List directory contents* (Menampilkan isi direktori).
c. **Siapakah pencipta perintah "ls"?**
   Richard Stallman dan David MacKenzie.
d. **Apakah arti dari -h dari manual ls?**
   *-h, --human-readable:* Menampilkan ukuran file dalam bentuk format yang mudah dibaca manusia (seperti 1K, 234M, 2G).
e. **Option apa yang harus digunakan agar dapat melihat direktori secara rekursif?**
   Opsi `-R` atau `--recursive`.
f. *(Screenshot `man cp`)*
   ![Screenshot 8f](/13_Perintah_Dasar_Linux/soal_8f.png)
g. **Apa fungsi perintah "cp"?**
   *Copy files and directories* (Menyalin file dan direktori).
h. **Siapakah pencipta perintah "cp"?**
   Torbjorn Granlund, David MacKenzie, dan Jim Meyering.
i. **Apakah arti -v dalam perintah "cp"?**
   *-v, --verbose:* Menampilkan deskripsi/tulisan penjelasan secara langsung mengenai apa yang sedang dilakukan oleh sistem saat proses *copy* berjalan.
j. **Jika ingin interaktif, option apa yang harus digunakan?**
   Opsi `-i` atau `--interactive` (akan memunculkan konfirmasi sebelum file ditimpa).

**9. Pipe**
a. *(Screenshot `cat /etc/passwd`)*
   ![Screenshot 9a](/13_Perintah_Dasar_Linux/soal_9a.png)
b. **Apa fungsi perintah cat?**
   Menampilkan, menggabungkan, atau membaca isi dari suatu file untuk ditampilkan ke *standard output* (layar terminal).
c. *(Screenshot `cat /etc/passwd | grep daemon`)*
   ![Screenshot 9c](/13_Perintah_Dasar_Linux/soal_9c.png)
d. *(Screenshot `cat /etc/passwd | grep root`)*
   ![Screenshot 9d](/13_Perintah_Dasar_Linux/soal_9d.png)
e. *(Screenshot `cat /etc/passwd | grep nobody`)*
   ![Screenshot 9e](/13_Perintah_Dasar_Linux/soal_9e.png)
f. **Apakah fungsi perintah " | grep daemon"?**
   *Pipe* (`|`) akan mengambil hasil lemparan teks dari perintah sebelumnya (cat), lalu `grep daemon` berfungsi untuk menyaring teks panjang tersebut dan hanya menampilkan baris yang mengandung tulisan/kata "daemon" saja.

**10. Redirection**
a. **Jelaskan hasil `ls -al > /home/relx/result.txt`:**
   Daftar panjang direktori root tidak dimunculkan di layar, melainkan diarahkan (ditulis) ke dalam sebuah file teks baru bernama `result.txt`.
b. **Dimana file result.txt berada?**
   Berada di direktori `/home/relx/`.
c. **Jelaskan hasil `ls -al > /home/relx/result.txt` (setelah dari /etc):**
   Hasil `ls -al` dari folder `/etc` akan ditulis ke `result.txt`, dan secara otomatis MENIMPA (*overwrite* / menghapus) tulisan lama yang sebelumnya ada di dalam file tersebut.
d. **Apakah fungsi dari perintah >?**
   Output Redirection: Mengarahkan keluaran/output program untuk disimpan menjadi sebuah file, dan bersifat merusak (menimpa) jika file dengan nama yang sama sudah ada.
e. **Jelaskan hasil `ls -al >> /home/relx/result1.txt`:**
   Daftar panjang dari direktori root akan ditulis ke dalam file teks baru bernama `result1.txt`.
f. **Jelaskan hasil `ls -al >> /home/relx/result1.txt` (setelah dari /etc):**
   Hasil `ls -al` dari folder `/etc` akan DITAMBAHKAN di bagian bawah (*append*) tulisan lama di dalam `result1.txt`, tanpa menghapus hasil `ls` sebelumnya.
g. **Apakah perbedaan perintah > dan >>?**
   Tanda `>` akan menimpa dan menghapus isi file lama secara total (*overwrite*), sedangkan tanda `>>` akan menyimpan tulisan baru dengan menyambungnya di ujung/bawah tulisan lama (*append*).

---

## II. Kompile Source Code

*(Screenshot tahap kompilasi dan run program Modul 13)*
![Screenshot Part 2](/13_Perintah_Dasar_Linux/part2.png)

**2. Perintah untuk mengkompile 2_1:**
```bash
gcc 2_1.c -o 2_1
```

**3. Perintah untuk menjalankan program 2_1:**
```bash
./2_1
```

**5. Perintah untuk mengkompile myopen:**
```bash
gcc 2_2.c -o myopen
```

**6. Perintah untuk menjalankan program myopen:**
```bash
./myopen 2_1.c
```
*(Contoh argumen tambahan file `2_1.c` atau nama file apa pun untuk dibaca)*

**7. Jelaskan apa yang dilakukan program tersebut!**
Program `myopen` dibuat untuk mengecek dan menangkap kesalahan *(error handling)*. Program akan meminta *user* memasukkan tepat 1 argumen tambahan berupa nama file saat dieksekusi. Kemudian, program menggunakan fungsi/system-call bawaan Linux `open()` untuk mengakses file tersebut secara hanya-baca (`O_RDONLY`). Jika file gagal dibuka (misal file tidak ada/izin ditolak), program akan menangkap kode error dari kernel dan memunculkan tulisan penyebab kegagalannya berkat fungsi `strerror(errno)`. Jika berhasil, ia akan mengkonfirmasi bahwa file berhasil dibuka.
