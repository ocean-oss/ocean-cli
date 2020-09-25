export file=${1:-"app.yaml"}

curl -X PUT \
  -H "Authorization: bearer ${OCEAN_ACCESS_TOKEN}"\
  --data-binary @$file\
  $OCEAN_URL/api/v1/apps/validate\
/
