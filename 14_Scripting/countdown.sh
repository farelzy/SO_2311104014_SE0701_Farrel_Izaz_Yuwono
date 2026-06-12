#!/bin/bash

counter=10
while [ $counter -gt 0 ]; do
    echo $counter
    counter=$((counter - 1))
    sleep 1
done
echo "GO!"