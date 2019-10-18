curl "http://localhost:4741/facts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "fact": {
        "category": "'"${CATEGORY}"'",
        "level": "'"${LEVEL}"'",
        "user_id": "'"${ID}"'"
      }
   }'

echo
