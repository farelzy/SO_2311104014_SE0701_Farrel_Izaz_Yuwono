# Praktikum Xinu  
**Farrel Izaz Yuwono - 2311104014**  

## Praktikum Sistem Operasi – Eksplorasi dan Modifikasi Xinu OS  

---

## Dasar Teori  

### 1. Sistem Operasi Xinu  
Xinu (Xinu Is Not Unix) adalah sistem operasi sederhana yang digunakan untuk pembelajaran konsep dasar sistem operasi. Xinu memungkinkan mahasiswa memahami secara langsung bagaimana kernel bekerja, termasuk pengelolaan proses, memori, dan komunikasi antar proses.

---

### 2. System Call (Syscall)  
System call adalah mekanisme yang digunakan oleh program user untuk meminta layanan dari kernel. Syscall menjadi penghubung antara user program dengan sistem operasi.

Dalam Xinu, syscall biasanya berbentuk fungsi kernel dengan format:
```c
syscall nama_fungsi(parameter);

![Hasil Run](/09_Syscall_Xinu/uptime.png)
