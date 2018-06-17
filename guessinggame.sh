#!/bin/bash

enterguess ()
{
echo "How many files are in current directory? Please type your guess:"
read guess 
}

enterguess

while [[ $guess -ne 10 ]] # while loop uses do and done
do
  if [[ $guess -gt 10 ]]
  then
    echo "your guess is too high"
    enterguess
  elif [[ $guess -lt 10 ]]
  then
    echo "your guess is too low"
    enterguess
  fi
done

if [[ $guess -eq 10 ]] # if uses then and fi
then
  echo "Congratulation!"
fi
