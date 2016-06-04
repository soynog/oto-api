#!/bin/bash

curl --include --request PATCH http://localhost:3000/trips/$ID \
  --header "Content-Type: application/json" \
  --data '{
    "trip": {
      "user_id": 1
    }
  }'
