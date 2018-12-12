#!/bin/bash

curl "http://localhost:4741/update-character" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "hp": {
      "hp": "'"${HP}"'",
    }
  }'

echo
