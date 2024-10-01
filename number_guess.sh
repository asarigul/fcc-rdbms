#!/bin/bash

MAX=1000

READ_GUESS() {
  if [[ $1 ]]
  then
    echo -e "$1"
  fi

  read GUESS

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    READ_GUESS "That is not an integer, guess again:"
  fi
}

###

echo "Enter your username:"
read NAME

PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only --no-align -c"

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$NAME'")

if [[ -z $USER_ID ]]
then
  echo -e "\nWelcome, $NAME! It looks like this is your first time here."
  CREATE_USER=$($PSQL "INSERT INTO users(name) VALUES('$NAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$NAME'")
else
  HISTORY=$($PSQL "select count(*), min(guess_count) from games where user_id=$USER_ID")
  IFS='|' read -r GAMES BEST_GUESS <<< "$HISTORY"

  echo -e "\nWelcome back, $NAME! You have played $GAMES games, and your best game took $BEST_GUESS guesses."
fi

RAND=$((1 + $RANDOM % $MAX))
echo $RAND

READ_GUESS "\nGuess the secret number between 1 and 1000:"

COUNT=1
while [[ $GUESS -ne $RAND ]]
do
    if [[ $GUESS -lt  $RAND ]]
    then
      MSG="It's lower than that, guess again:"
    else
      MSG="It's higher than that, guess again:"
    fi

    READ_GUESS "$MSG" 
    COUNT=$((COUNT + 1))
done

SAVE=$($PSQL "INSERT INTO games(user_id, guess_count) VALUES($USER_ID, $COUNT)")
echo -e "You guessed it in $COUNT tries. The secret number was $GUESS. Nice job!"