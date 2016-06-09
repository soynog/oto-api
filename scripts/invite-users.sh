curl --include --request POST http://localhost:3000/trips/$ID/invite \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "users": [ 1, 2, 3, 4 ]
  }'
