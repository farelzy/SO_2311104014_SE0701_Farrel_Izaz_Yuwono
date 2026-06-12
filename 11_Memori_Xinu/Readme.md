# Praktikum Xinu  
**Farrel Izaz Yuwono - 2311104014**  

## Praktikum Sistem Operasi – Modul 11 Memori Xinu

## Dasar Teori  

### 1. Manajemen Memori pada Xinu  
Xinu menggunakan pendekatan memori fisik secara langsung tanpa adanya *virtual memory* atau memori berlapis rumit seperti OS modern. Memori utama dibagi menjadi beberapa segmen utama: kode (text), data, BSS (Block Started by Symbol), dan *free space* (memori kosong) yang dapat dialokasikan secara dinamis (*heap*).

### 2. Free List dan Struktur Memori Dinamis  
Untuk mengelola sisa memori kosong, Xinu menggunakan struktur data *Linked List* yang disebut dengan *free list*. Struktur utamanya tersimpan dalam variabel global `memlist`. Setiap blok memori kosong memiliki informasi panjang memori (*mlength*) dan pointer ke blok kosong berikutnya (*mnext*). Alokasi memori dilakukan menggunakan `getmem()` dan dikembalikan menggunakan `freemem()`.

---

## Jawaban Pertanyaan Jurnal

**a. Mengapa Xinu memisahkan data segment dan BSS segment?**
Xinu memisahkan *data segment* dan *BSS segment* untuk efisiensi ruang pada file *executable*. *Data segment* digunakan untuk menyimpan variabel global/statis yang memiliki nilai awal (inisialisasi), sehingga nilainya harus ikut disimpan di dalam file binari. Sedangkan *BSS segment* digunakan untuk variabel yang nilainya nol atau belum diinisialisasi. Variabel BSS tidak memakan memori di dalam file binari, OS hanya mencatat ukuran kebutuhannya lalu otomatis mengisinya dengan nol (0) saat dimuat ke RAM.

**b. Bagaimana alokasi dan dealokasi memori selama eksekusi memengaruhi ukuran free space?**
- **Alokasi (`getmem`):** OS akan mencari blok memori yang cukup di *free list*. Saat ditemukan, blok tersebut dipotong atau dikeluarkan dari list untuk diberikan ke proses, sehingga **mengurangi** total ukuran *free space*.
- **Dealokasi (`freemem`):** Saat memori dikembalikan, OS memasukkan kembali blok tersebut ke *free list* dan melakukan *coalescing* (penggabungan) jika posisinya bersebelahan dengan blok kosong lain. Ini akan **menambah** total ukuran *free space*.

**c. Mengapa penggunaan heap lebih berpotensi menimbulkan masalah dibandingkan stack?**
*Heap* dikelola secara manual oleh pemrogram (alokasi/dealokasi). Hal ini sangat rawan *human error* seperti *memory leak* (lupa melepas memori), *dangling pointer*, hingga fragmentasi. Sedangkan *stack* dikelola secara otomatis oleh *compiler* berdasarkan siklus hidup fungsi (*scope*), sehingga otomatis terbebaskan ketika fungsi selesai dieksekusi dan bebas dari masalah *memory leak* logika.

**d. Mengapa Xinu menggunakan struktur linked list untuk menyimpan free block?**
*Linked list* sangat dinamis dan efisien untuk melacak potongan memori yang ukurannya tidak tetap (*variable-size*). Saat terjadi alokasi/dealokasi, Xinu hanya perlu memutus atau menyambungkan pointer (*insert/delete node*) tanpa perlu menggeser data lain. Hal ini juga memudahkan algoritma *first-fit* dan penggabungan blok yang berdekatan (*coalescing*).

**e. Apa tantangan utama dalam penggunaan heap di Xinu?**
Tantangan terbesarnya adalah **Fragmentasi Eksternal**. Proses *getmem* dan *freemem* yang terus-menerus akan meninggalkan celah-celah kecil memori kosong yang tersebar. Akibatnya, meskipun total keseluruhan *free space* masih banyak, OS mungkin menolak permintaan memori besar karena tidak ada satu pun blok utuh (*contiguous*) yang ukurannya muat. Selain itu, proses pencarian (*traversal*) pada *linked list* juga memakan waktu *overhead*.

---

## Output Eksekusi

*(Screenshot source code `xsh_freememory.c` dan hasil terminal)*

![Hasil Run](/11_Memori_Xinu/modul11.png)
