#!/bin/bash

# Prompt the user to enter three numbers
echo "Please enter the first number:"
read num1

echo "Please enter the second number:"
read num2

echo "Please enter the third number:"
read num3

# Determine the greatest number
if [ "$num1" -ge "$num2" ] && [ "$num1" -ge "$num3" ]; then
    greatest=$num1
elif [ "$num2" -ge "$num1" ] && [ "$num2" -ge "$num3" ]; then
    greatest=$num2
else
    greatest=$num3
fi

# Display the greatest number
echo "The greatest number is: $greatest"

