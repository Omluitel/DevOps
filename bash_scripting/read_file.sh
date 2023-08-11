#!/bin/bash
filename="sample.txt"
while read line; do
    echo "Line: $line"
done < "$filename"
