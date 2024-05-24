#!/bin/bash

# Function to calculate the factorial
factorial() {
    local n=$1
    local result=1

    # Calculate factorial
    for (( i=1; i<=n; i++ )); do
        result=$(( result * i ))
    done

    echo $result
}

# Prompt the user to enter a number
echo "Please enter a number:"
read number

# Check if the input is a valid number
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

# Calculate and print the factorial of the given number
fact=$(factorial $number)
echo "Factorial of $number is: $fact"

