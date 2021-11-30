#
S3_BUCKET_NAME=""
GITHUB_ACCESS_TOKEN=""
GITHUB_REPO_HTTPS_URL=""
 
## create a source credentials config file
cat <<EOF > access.json
{   
    "token": "$GITHUB_ACCESS_TOKEN",
    "serverType": "GITHUB",
    "authType": "PERSONAL_ACCESS_TOKEN",
    "shouldOverwrite": true
}
EOF
 
## create codebuild source credential for GitHub
aws codebuild import-source-credentials \
--cli-input-json file://access.json
 
## check source credentials information
aws codebuild list-source-credentials