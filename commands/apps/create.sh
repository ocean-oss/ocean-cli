archive_name="app.zip"

rm_archive() {
  rm "$archive_name"
}

git archive -o "$archive_name" --format zip HEAD

trap "rm_archive" EXIT

curl -X POST \
  -H "Authorization: bearer ${OCEAN_ACCESS_TOKEN}" \
  -F "file=@$archive_name;type=application/zip" \
  "$OCEAN_URL"/api/v1/apps