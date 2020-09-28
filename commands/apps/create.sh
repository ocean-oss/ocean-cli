if [ -z "$1" ]
then
  echo "Provide an app name."
  exit 1
elif [ -z "$2" ]
then
  echo "Provide is_public property."
  exit 1
else
  curl -X POST \
    -H "Authorization: bearer ${OCEAN_ACCESS_TOKEN}" \
    -H "Content-Type: application/json" \
    --data "{\"name\": \"$1\", \"public\": \"$2\"}" \
    "$OCEAN_URL"/api/v1/apps
fi
