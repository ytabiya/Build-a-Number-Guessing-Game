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
  GAMES_COUNT=$($PSQL "SELECT COUNT (player_id) FROM games WHERE name = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN (guess_number) FROM games WHERE name = '$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_COUNT games, and your best game took $BEST_GAME guesses."
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
  if [[ ! $NUMBER =~ ^([0-9]+)*$ ]]
    then
    echo "That is not an integer, guess again:"
    read NUMBER
  elif [[ $NUMBER -lt $GUESS_NUMBER ]]
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

echo "You guessed it in $COUNT tries. The secret number was $GUESS_NUMBER. Nice job!"
PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE name = '$USERNAME'")
$PSQL "INSERT INTO games (player_id, guess_number, name) VALUES ($PLAYER_ID, $COUNT, '$USERNAME')"
#total number of games user played

#best game guess

#generate secret number