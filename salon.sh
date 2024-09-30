#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"

SERVICES=$($PSQL "SELECT service_id,name FROM services ORDER BY service_id")

SERVICE_MENU() {
  if [[ $1 ]]
  then
    echo -e "$1"
  fi

  echo -e "Select a service and enter its number from this list:"

  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done
}

SERVICE_MENU 

read SERVICE_ID_SELECTED
if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
then
  # send to main menu
  SERVICE_MENU "Enter a number please!"
else
  SERVICE_ID=$($PSQL "SELECT service_id FROM services WHERE service_id = $SERVICE_ID_SELECTED")

  if [[ -z $SERVICE_ID ]] 
  then
    SERVICE_MENU "We dont have this service!"
  else
    echo -e "\nEnter phone:"
    read CUSTOMER_PHONE

    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
    echo $CUSTOMER_ID

    if [[ -z $CUSTOMER_ID ]]
    then
      echo -e "\nEnter name:"
      read CUSTOMER_NAME

      INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
    fi
    
    echo -e "\nEnter time:"
    read SERVICE_TIME

    
    echo "VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')"

    INSERT_APPOINMENT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

    APPOINMENT_INFO=$($PSQL "select s.name, time, c.name  from appointments inner join customers c using(customer_id) inner join services s using(service_id) where customer_id = $CUSTOMER_ID and service_id = $SERVICE_ID and time = '$SERVICE_TIME'")
    echo $APPOINMENT_INFO

    CLEAN_RESULT=$(echo "$APPOINMENT_INFO" | sed 's/ | /_/g')
    echo $CLEAN_RESULT

    IFS='_' read -r SERVICE TIME NAME <<< "$CLEAN_RESULT"

    echo "I have put you down for a$SERVICE at $TIME, $NAME."
  fi
fi
