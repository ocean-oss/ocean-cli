export app_id=$1

curl -X GET \
  -H "Authorization: bearer ${OCEAN_ACCESS_TOKEN}"\
  $OCEAN_URL/api/v1/apps/$app_id/yaml\
/
