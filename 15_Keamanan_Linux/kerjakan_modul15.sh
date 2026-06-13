#!/bin/bash

# ==========================================
# Script Bantuan Jurnal Modul 15 - Keamanan
# ==========================================

echo "=== Persiapan Folder ==="
mkdir -p ~/praktikan
cd ~/praktikan

echo -e "\n=== 1. Integritas: Dasar Hashing ==="
echo "[1a] Menghitung hash dari /etc/passwd:"
sha256sum /etc/passwd
sha512sum /etc/passwd
md5sum /etc/passwd

echo -e "\n[1b] Membuat test_0.txt..."
cp /etc/passwd ~/praktikan/test_0.txt
echo "test_0.txt berhasil dibuat."

echo -e "\n[1c] Menghitung hash dari test_0.txt:"
sha256sum ~/praktikan/test_0.txt
sha512sum ~/praktikan/test_0.txt
md5sum ~/praktikan/test_0.txt

echo -e "\n[1d] Rename test_0.txt menjadi file_0.txt dan hitung hash:"
mv ~/praktikan/test_0.txt ~/praktikan/file_0.txt
sha256sum ~/praktikan/file_0.txt
sha512sum ~/praktikan/file_0.txt
md5sum ~/praktikan/file_0.txt

echo -e "\n=== 2. Integritas: Avalanche ==="
echo "[2a] Download file test_1.txt..."
wget -qO test_1.txt http://tiny.cc/test1_txt
echo "Download selesai."

echo -e "\n[2b] Menghitung hash test_1.txt SEBELUM diubah:"
sha256sum test_1.txt
sha512sum test_1.txt
md5sum test_1.txt

echo -e "\n[2c] Menghapus titik (.) di akhir file test_1.txt..."
# Menghapus karakter terakhir (titik) dari file
truncate -s -2 test_1.txt

echo -e "\n[2d] Menghitung hash test_1.txt SETELAH diubah:"
sha256sum test_1.txt
sha512sum test_1.txt
md5sum test_1.txt

echo -e "\n=== 3. Integritas: Metadata ==="
echo "[3a] Download file test_1.doc..."
wget -qO test_1.doc http://tiny.cc/test1_doc
echo "Download selesai."

echo -e "\n[3b] Menghitung hash test_1.doc SEBELUM diedit:"
sha256sum test_1.doc
sha512sum test_1.doc
md5sum test_1.doc

echo -e "\n[!] UNTUK SOAL 3c - 3e:"
echo "Silakan buka file test_1.doc menggunakan LibreOffice/Word, ketik 'abcdef', save, lalu hapus 'abcdef', dan save kembali."
echo "Kemudian jalankan command berikut manual di terminal:"
echo "  sha256sum test_1.doc"
echo "  sha512sum test_1.doc"
echo "  md5sum test_1.doc"
