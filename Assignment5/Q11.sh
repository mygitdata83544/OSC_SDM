#!/bin/bash

# Function to calculate gross salary
calculate_gross_salary() {
    local basic_salary=$1
    local da_percentage=$2
    local hra_percentage=$3

    # Calculate DA and HRA amounts
    local da=$(echo "scale=2; $basic_salary * $da_percentage / 100" | bc)
    local hra=$(echo "scale=2; $basic_salary * $hra_percentage / 100" | bc)

    # Calculate gross salary
    local gross_salary=$(echo "scale=2; $basic_salary + $da + $hra" | bc)
    
    echo $gross_salary
}

# Prompt the user to enter the basic salary
echo "Please enter the basic salary:"
read basic_salary

# Check if the input is a valid number
if ! [[ "$basic_salary" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

# Define the DA and HRA percentages
da_percentage=40
hra_percentage=20

# Calculate and display the gross salary
gross_salary=$(calculate_gross_salary $basic_salary $da_percentage $hra_percentage)
echo "Gross salary: $gross_salary"

