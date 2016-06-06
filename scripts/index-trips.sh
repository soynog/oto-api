#!/bin/bash

curl --include --request GET http://localhost:3000/trips \
  --header "Authorization: Token token=$TOKEN"
