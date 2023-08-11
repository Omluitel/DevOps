#!/bin/bash
backup_dir="backup"
mkdir -p "$backup_dir"
cp *.sh "$backup_dir"
echo "Files backed up to $backup_dir"
