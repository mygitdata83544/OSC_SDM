#!/bin/bash


# Prompt the user to enter a name
echo "Please enter a name : "
read name


# Check if the entered name is a file
if [ -f "$name" ];
then
echo "$name is a file."


# Display the size of the file
filesize=$(stat -c%s "$name")
echo "Size of the file is : $filesize bytes"


# Check if the entered name is a directory
elif [ -d "$name" ];
then
echo "$name is a directory."


# Display the contents of the directory
echo "Contents of the directory : "
ls "$name"


# If the entered name is neither a file nor a directory

else
   echo "$name is neither a file nor a directory."

fi
