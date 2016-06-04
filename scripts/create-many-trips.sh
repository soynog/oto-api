curl --include --request POST http://localhost:3000/trips \
  --header "Content-Type: application/json" \
  --data '{
    "trip": {
      "name": "Ozarks Trip",
      "description": "This trip is gonna be sooo cool guys",
      "start_date": "2016-07-01",
      "end_date": "2016-07-03",
      "location": "Ozarks",
      "user_id": 1
    }
  }'

curl --include --request POST http://localhost:3000/trips \
  --header "Content-Type: application/json" \
  --data '{
    "trip": {
      "name": "Green Mountains Backpack",
      "description": "Gonna eat some Ben & Jerry`s",
      "start_date": "2016-08-05",
      "end_date": "2016-08-10",
      "location": "Vermont",
      "user_id": 1
    }
  }'

curl --include --request POST http://localhost:3000/trips \
  --header "Content-Type: application/json" \
  --data '{
    "trip": {
      "name": "Alpine Skiing",
      "description": "Ca va etre formidable",
      "start_date": "2017-01-12",
      "end_date": "2017-01-15",
      "location": "Switzerland",
      "user_id": 1
    }
  }'
