#!/bin/bash

# Function to check if a number is prime

is_prime()
{
    local num=$1

	# Numbers less than 2 are not prime
	if [ "$num" -lt 2 ];
	then
	   return 1

	fi

	# Check for factors from 2 to the square root of the number
	for (( i=2; i*i<=num; i++ ));
	do
	  if [ $((num % i)) -eq 0 ];
	  then
	  return 1
	  fi

    done


	return 0

}


# Promt the user to enter a number
echo "Please enter a number : "
read number


# Check if the input is a valid number
if ! [[ "$number" =~ ^[0-9]+$ ]];
then
    echo "Invalid input. Please enter a valid number."
	exit 1

fi

# Check if the number is prime

if is_prime "$number";
then
    echo "$number is a prime number."
	else
	echo "$number is not a prime number."
	fi
