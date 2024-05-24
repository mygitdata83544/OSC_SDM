#!/bin/bash

# Prompt the user to enter a number
echo "Please enter a number:"
read number

# Check if the input is a valid number
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

# Determine if the number is positive, negative, or zero
if [ "$number" -gt 0 ]; then
    echo "$number is a positive number."
elif [ "$number" -lt 0 ]; then
    echo "$number is a negative number."
else
    echo "$number is zero."
fi

