#!/bin/bash

enterguess ()
{
echo "How many files are in current directory? Please type your guess:"
read guess 
}

enterguess

num=$(ls -1 | wc -l)

while [[ $guess -ne $num ]] # while loop uses do and done
do
  if [[ $guess -gt $num ]]
  then
    echo "your guess is too high"
    enterguess
  elif [[ $guess -lt $num ]]
  then
    echo "your guess is too low"
    enterguess
  fi
done

if [[ $guess -eq $num ]] # if uses then and fi
then
  echo "Congratulation!"
fi
