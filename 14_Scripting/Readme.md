# Praktikum Xinu  
**Farrel Izaz Yuwono - 2311104014**  

## Praktikum Sistem Operasi – Modul 14 Scripting

---

### [15 Poin] PERMULAAN (greeting.sh)
**Script:**
```bash
#!/bin/bash

echo "Hai $USER"
echo "Hari ini adalah $(date)"
echo "User yang sedang login saat ini adalah:"
who
```
**Screenshot Eksekusi:**
![Screenshot 1](/14_Scripting/soal_1.png)

### [15 Poin] PENGONDISIAN (greeting_1.sh)
**Script:**
```bash
#!/bin/bash

jam=$(date +%k)
echo "Sekarang jam $jam"

if [ $jam -ge 5 ] && [ $jam -lt 10 ]; then
    echo "Selamat pagi $USER"
elif [ $jam -ge 10 ] && [ $jam -lt 15 ]; then
    echo "Selamat siang $USER"
elif [ $jam -ge 15 ] && [ $jam -lt 19 ]; then
    echo "Selamat sore $USER"
else
    echo "Selamat malam $USER"
fi
```
**Screenshot Eksekusi:**
![Screenshot 2](/14_Scripting/soal_2.png)

### [15 Poin] PERULANGAN (countdown.sh)
**Script:**
```bash
#!/bin/bash

counter=10
while [ $counter -gt 0 ]; do
    echo $counter
    counter=$((counter - 1))
    sleep 1
done
echo "GO!"
```
**Screenshot Eksekusi:**
![Screenshot 3](/14_Scripting/soal_3.png)

### [15 Poin] INPUT PENGGUNA (countdown_1.sh)
**Script:**
```bash
#!/bin/bash

echo "Masukkan angka:"
read angka
echo "Mulai countdown!"

while [ $angka -gt 0 ]; do
    echo $angka
    angka=$((angka - 1))
    sleep 1
done
echo "GO!"
```
**Screenshot Eksekusi:**
![Screenshot 4](/14_Scripting/soal_4.png)

### [20 Poin] PARAMETER SCRIPT (countdown_2.sh)
**Script:**
```bash
#!/bin/bash

if [ $# -ne 1 ]; then
    echo "penggunaan: $0 initial_value"
    exit 1
fi

counter=$1
while [ $counter -gt 0 ]; do
    echo $counter
    counter=$((counter - 1))
    sleep 1
done
echo "GO!"
```
**Screenshot Eksekusi:**
![Screenshot 5a](/14_Scripting/soal_5a.png)
![Screenshot 5b](/14_Scripting/soal_5b.png)

### [20 Poin] PENGONDISIAN (list_direktori.sh)
**Script:**
```bash
#!/bin/bash

for file in *; do
    echo $file
done
```
**Screenshot Eksekusi:**
![Screenshot 6](/14_Scripting/soal_6.png)
