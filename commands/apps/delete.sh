if [ -z "$1" ]
then
  echo "Provide an app name."
  exit 1
else
  curl -X DELETE \
    -H "Authorization: bearer ${OCEAN_ACCESS_TOKEN}" \
    --data-binary @app.yaml \
    "$OCEAN_URL"/api/v1/apps/"$1"
fi