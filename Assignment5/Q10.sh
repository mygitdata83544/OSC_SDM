#!/bin/bash

# Function to generate Fibonacci series
fibonacci() {
    local n=$1
    local a=0
    local b=1

    # Print first two terms
    echo -n "$a $b"

    # Generate subsequent terms
    for (( i=2; i<n; i++ )); do
        local next=$((a + b))
        echo -n " $next"
        a=$b
        b=$next
    done
}

# Prompt the user to enter the number of terms
echo "Please enter the number of terms in the Fibonacci series:"
read num_terms

# Check if the input is a valid number
if ! [[ "$num_terms" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

# Check if the number of terms is greater than 0
if [ "$num_terms" -le 0 ]; then
    echo "Number of terms should be greater than 0."
    exit 1
fi

# Print Fibonacci series with given number of terms
echo "Fibonacci series with $num_terms terms:"
fibonacci $num_terms
echo ""

