i#!/bin/bash

while true; do
echo " Menu:"
echo "1. Date:"
echo "2. Cal:"
echo "3. Ls:"
echo "4. Pwd:"
echo "5. Exit:"

read -p "Enter Your Choice:" choice

case $choice in

1)
 echo "Current Date and Time:"
 date
 ;;

 2)
 echo "Calender for the current month:"
 cal
 ;;

 3)
 echo "Contents of the current directory:"
 ls
 ;;

 4)
  echo "Current Working directory:"
  pwd
  ;;

  5)
  echo "Exit"
  exit
  ;;

  *)
  echo "Invalid choice"
  ;;
  esac
  done
