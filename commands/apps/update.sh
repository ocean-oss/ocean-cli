zipfile_name="app.zip"

rm_archive() {
  rm "$zipfile_name"
}

if [ ! -d .git ]
then
  echo "There is no git repository in this directory. Can't update Ocean app."
else
  if [ -z "$1" ]
  then
    echo "Provide an app name."
    exit 1
  else
    git archive -o "$zipfile_name" --format zip HEAD

    trap "rm_archive" EXIT

    curl -X PUT \
      -H "Authorization: bearer ${OCEAN_ACCESS_TOKEN}" \
      -F "zipfile=@$zipfile_name;type=application/zip" \
      "$OCEAN_URL"/api/v1/apps/"$1"
  fi
fi
