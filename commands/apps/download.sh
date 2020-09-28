zipfile_name="app.zip"

if [ -z "$1" ]
then
  echo "Provide an app name."
  exit 1
else
  curl -X GET \
    -H "Authorization: bearer ${OCEAN_ACCESS_TOKEN}" \
    --output "$zipfile_name" \
    "$OCEAN_URL"/api/v1/apps/"$1"/download

  unzip "$zipfile_name"

  rm "$zipfile_name"
fi