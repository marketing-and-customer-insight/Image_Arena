#!/usr/bin/env bash
set -euo pipefail

shopt -s nullglob
files=(images/*)

if [ ${#files[@]} -eq 0 ]; then
  echo "No files found in images/."
  exit 0
fi

for f in "${files[@]}"; do
  if [[ ! "$f" =~ \.jpg$ ]]; then
    echo "Invalid extension: $f"
    exit 1
  fi

  if ! file "$f" | grep -qi 'JPEG image data'; then
    echo "Invalid JPG content: $f"
    exit 1
  fi
done

echo "All images are valid JPG files."
