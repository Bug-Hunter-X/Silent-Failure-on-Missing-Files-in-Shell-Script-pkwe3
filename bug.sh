#!/bin/bash

# This script attempts to process a list of files, but it has a subtle bug.
# The error occurs when a file in the list does not exist.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found." >&2
    exit 1
  fi
  # Process file here... 
  echo "Processing: $file"
done