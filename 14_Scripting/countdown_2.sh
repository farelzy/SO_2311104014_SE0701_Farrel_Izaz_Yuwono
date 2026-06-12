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