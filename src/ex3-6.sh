#!/bin/bash

i=0
fie="files"

if [ ! -d "$fie" ]; then
    mkdir "$fie"
fi

if [ -f "$1" ]; then
    while [ "$i" -lt 5 ]; do
        mkdir -p "$fie/file$i"                 
        touch "$fie/file$i/file$i.txt"
        i=$((i + 1))
    done
else
    while [ "$i" -lt 5 ]; do
        touch "$fie/file$i.txt"     
        i=$((i + 1))
    done
fi

ls -R "$fie"

mkdir "$fie/files"
tar -cvf "$fie/files/files.tar" "$fie/file0.txt" "$fie/file1.txt" "$fie/file2.txt" "$fie/file3.txt" "$fie/file4.txt"

tar -xvf "$fie/files/files.tar" -C "$fie"
exit 0

