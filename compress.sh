#!/bin/bash

# Compress any FST files found in the specified directory.

find $1 -type f | while read file; do
  r.filetype $file &>/dev/null
  if [ "$?" == "33" ]; then
    echo "Compressing $file"
    fstcompress -fstin $file -fstout $file.small >/dev/null
    mv $file.small $file
  fi
done
