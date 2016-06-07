#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "cal@cal.cal",
      "password": "cal",
      "password_confirmation": "cal",
      "first_name": "Cal",
      "last_name": "Calward"
    }
  }'

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "deb@deb.deb",
      "password": "deb",
      "password_confirmation": "deb",
      "first_name": "Deb",
      "last_name": "Debski"
    }
  }'
