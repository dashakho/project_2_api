curl "http://localhost:4741/facts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "fact": {
        "category": "'"${CATEGORY}"'",
        "level": "'"${LEVEL}"'"
      }
   }'

echo
