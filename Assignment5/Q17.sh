#!/bin/bash

# Define the number of rows for the pattern
rows=5

# Outer loop for rows
for (( i=1; i<=rows; i++ )); do
    # Inner loop for columns
    for (( j=1; j<=i; j++ )); do
        echo -n "* "
    done
    echo ""
done

