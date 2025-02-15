#!/bin/bash

# This script is a corrected version that handles missing files gracefully.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  # Explicitly check if the file exists and is a regular file
  if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found or is not a regular file." >&2
    exit 1
  fi
  # Process the file 
  echo "Processing: $file"
done

# Indicate success if all files were processed
exit 0