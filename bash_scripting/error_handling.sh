#!/bin/bash
trap 'echo "An error occurred!"' ERR
ls non_existent_file
