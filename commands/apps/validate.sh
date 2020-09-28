if [ -z "$1" ]
then
  echo "Provide an app name."
  exit 1
else
  curl -X PUT \
    -H "Authorization: bearer ${OCEAN_ACCESS_TOKEN}" \
    --data-binary @"app.yml" \
    "$OCEAN_URL"/api/v1/apps/"$1"/validate
fi