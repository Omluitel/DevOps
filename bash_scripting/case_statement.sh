#!/bin/bash

# Prompt the user to enter a color
read -p "Enter a color: " color

# Use a case statement to process the color input
case $color in
    red)
        echo "You chose red"
        ;;
    green)
        echo "You chose green"
        ;;
    blue)
        echo "You chose blue"
        ;;
    *)
        echo "Unknown color"
        ;;
esac
