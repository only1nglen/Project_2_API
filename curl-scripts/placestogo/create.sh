curl "http://localhost:4741/places_to_gos" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "places_to_go": {
      "name": "'"${NAME}"'"
    }
  }'

echo
