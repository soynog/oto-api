curl --include --request POST http://localhost:3000/invitations \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "invitation": {
      "status": "going",
      "trip_id": 70,
      "user_id": 1
    }
  }'
