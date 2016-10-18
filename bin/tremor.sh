APP_URL="${HEROKU_APP_NAME}.herokuapp.com"

# Extract the Pull Request Number
PR_NUMBER==$(echo $HEROKU_APP_NAME | sed 's/.*-pr-\(\d*\)/\1/g')

echo curl -X POST \
  -H "Content-Type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW" \
  -F "slack_channel=sbotting" \
  -F "variant_url=${APP_URL}" \
  -F "repo_name=sparkbox/seesparkbox.com" \
  -F "pr_number=${PR_NUMBER}" \
  "https://tremor.herokuapp.com/check"
