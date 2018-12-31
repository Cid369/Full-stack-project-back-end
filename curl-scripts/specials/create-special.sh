#!/bin/bash
curl "http://localhost:4741/speicals" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "character": {
      "name": "'"${NAME}"'",
      "gender": "'"${GENDER}"'",
      "hp": "'"${HP}"'",
      "user_id": "'"${U_ID}"'"
    }
  }'

echo
