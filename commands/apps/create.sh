curl -X POST \
  -H "Authorization: bearer ${OCEAN_ACCESS_TOKEN}" \
  --data-binary @app.yaml \
  "$OCEAN_URL"/api/v1/apps