#!/bin/bash

curl --include --request PATCH http://localhost:3000/trips/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "trip": {
      "name": "New Trip Name"
    }
  }'
