#!/bin/bash

# Prompt the user to enter a year
echo "Please enter a year:"
read year

# Check if the input is a valid year
if ! [[ "$year" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid year."
    exit 1
fi

# Determine if the year is a leap year
if (( (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 )); then
    echo "$year is a leap year."
else
    echo "$year is not a leap year."
fi

