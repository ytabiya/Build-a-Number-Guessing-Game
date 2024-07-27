#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#read username
echo "Enter your username:"
read USERNAME
USERNAME_HISTORY=$($PSQL "SELECT name FROM players")
NAME_FOUND=false

#check if username has been checked before

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

GUESS_NUMBER=$(($RANDOM%1000+1))
echo $GUESS_NUMBER
echo "Guess the secret number between 1 and 1000:"
read NUMBER
COUNT=1
while [ $NUMBER != $GUESS_NUMBER ]
do
  if [[ $NUMBER -lt $GUESS_NUMBER ]]
    then
    echo "It's lower than that, guess again:"
    read NUMBER
  elif [[ $NUMBER -gt $GUESS_NUMBER ]]
    then
    echo "It's higher than that, guess again:"
    read NUMBER
  fi  
COUNT=$(($COUNT + 1))
done

echo "you are right $COUNT"

#total number of games user played

#best game guess

#generate secret number