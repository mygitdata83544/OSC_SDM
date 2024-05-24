#!/bin/bash

# Function to convert text to reverse case
reverse_case() {
    local text="$1"
    echo "$text" | tr '[:upper:][:lower:]' '[:lower:][:upper:]'
}

# Prompt the user to enter the two file names
echo "Please enter the name of the first file:"
read first_file

echo "Please enter the name of the second file:"
read second_file

# Check if the first file exists
if [ ! -f "$first_file" ]; then
    echo "Error: File '$first_file' does not exist."
    exit 1
fi

# Read contents of the first file and convert to reverse case
content=$(<"$first_file")
reversed_content=$(reverse_case "$content")

# Append the reversed content to the second file
echo "$reversed_content" >> "$second_file"
echo "Contents from '$first_file' appended to '$second_file' in reverse case."

