#!/bin/bash

curl --include --request DELETE http://localhost:3000/trips/$ID \
  --header "Authorization: Token token=$TOKEN"
