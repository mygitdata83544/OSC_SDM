#!/bin/bash

# Check if filename argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

# Check if the file exists
if [ -e "$filename" ]; then
    # Get the last modification time
    modification_time=$(stat -c "%y" "$filename")
    echo "Last modification time of $filename: $modification_time"
else
    echo "File '$filename' does not exist."
fi

