#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#read username
echo "Enter your username:"
read USERNAME
USERNAME_HISTORY=$($PSQL "SELECT name FROM players")
NAME_FOUND=false

while read NAME
do
  if [[ "$USERNAME" == "$NAME" ]]
    then
    NAME_FOUND=true
    break
  fi
done <<< "$USERNAME_HISTORY"

if [[ $NAME_FOUND == true ]]
  then
  echo name found
else
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  $PSQL "INSERT INTO players (name) VALUES ('$USERNAME')" 
fi


#check if username has been checked before

#if yes print echo

#otherwsie

#total number of games user played

#best game guess

#generate secret number