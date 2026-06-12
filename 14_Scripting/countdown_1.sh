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