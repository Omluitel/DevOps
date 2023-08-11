#!/bin/bash
while true; do
    echo "Menu:"
    echo "1. Option 1"
    echo "2. Option 2"
    echo "3. Exit"
    read choice
    case $choice in
        1)
            echo "You chose Option 1"
            ;;
        2)
            echo "You chose Option 2"
            ;;
        3)
            echo "Exiting"
            break
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done
