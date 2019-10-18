curl "http://localhost:4741/facts" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
