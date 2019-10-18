curl "http://localhost:4741/facts/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "fact": {
      "category": "'"${CATEGORY}"'",
      "level": "'"${LEVEL}"'"
    }
  }'

  echo
