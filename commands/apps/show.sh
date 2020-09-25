export file=${1:-"app.yaml"}

if [ -z "$1" ]
then
  echo "Provide an app ID."
  exit 1
else
  curl -X GET \
    -H "Authorization: bearer ${OCEAN_ACCESS_TOKEN}" \
    "$OCEAN_URL"/api/v1/apps/"$1"
fi
