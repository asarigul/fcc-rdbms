#!/bin/bash

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit 0
fi

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

QUERY_BASE="select e.*, t.type, p.atomic_mass,p.melting_point_celsius, p.boiling_point_celsius from elements e inner join properties p ON (e.atomic_number = p.atomic_number) inner join types t ON (t.type_id = p.type_id) WHERE "
if [[ $1 =~ ^[0-9]+$ ]]
then
  QUERY="$QUERY_BASE e.atomic_number = $1"
else
  QUERY="$QUERY_BASE e.symbol = '$1' OR e.name = '$1'"
fi

RESULT=$($PSQL "$QUERY")

if [[ -z $RESULT ]]
then
  echo "I could not find that element in the database."
  exit 0
fi

#echo $RESULT 

IFS='|' read -r NUMBER SYMBOL NAME TYPE MASS MELTS BOILS <<< "$RESULT"

echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTS celsius and a boiling point of $BOILS celsius." 
