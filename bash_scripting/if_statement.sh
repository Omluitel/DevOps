#!/bin/bash
read -p "Enter a number: " num
if ((num < 0)); then
    echo "Negative number"
elif ((num > 0)); then
    echo "Positive number"
else
    echo "Zero"
fi
