#!/bin/bash

curl "http://localhost:4741/characters" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "Character": {
      "name": "'"${NAME}"'",
      "gender": "'"${GENDER}"'",
      "hp": "'"${HP}"'"
    }
  }'

echo
