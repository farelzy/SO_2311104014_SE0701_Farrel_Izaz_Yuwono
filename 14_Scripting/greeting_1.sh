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