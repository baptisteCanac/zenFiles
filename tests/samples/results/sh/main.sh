#!/bin/bash

clear

mkdir -p results

for file in *; do
    [ -f "$file" ] || continue  # Ignore les répertoires
    ext="${file##*.}"
    mkdir -p "results/$ext"  # Crée le dossier s'il n'existe pas
done

case "$1" in
    "-copy")
        for file in *; do
            [ -f "$file" ] && cp "$file" "results/${file##*.}/"
        done
        ;;
    "-move")
        for file in *; do
            [ -f "$file" ] && mv "$file" "results/${file##*.}/"
        done
        ;;
    *)
        echo "Usage: $0 [-copy | -move]"
        exit 1
        ;;
esac