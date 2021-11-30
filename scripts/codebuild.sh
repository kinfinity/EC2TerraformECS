
S3_BUCKET_NAME=""
GITHUB_REPO_HTTPS_URL=""
IAM_ROLE_ARN=""

## create build project definition
cat <<EOF > build.json
{  
  "name": "nodeproject",
  "source": {
    "type": "GITHUB",
    "location": "$GITHUB_REPO_HTTPS_URL"
  },
  "artifacts": {
    "type": "S3",
    "location": "$S3_BUCKET_NAME"
  },
  "environment": {
    "type": "LINUX_CONTAINER",
    "image": "aws/codebuild/amazonlinux2-x86_64-standard:3.0",
    "computeType": "BUILD_GENERAL1_SMALL"
  },
  "serviceRole": "$IAM_ROLE_ARN"
}
EOF

## create the build project
aws codebuild create-project --cli-input-json file://build.json

## list all projects in your codebuild
aws codebuild list-projects

## get project build details
aws codebuild batch-get-projects --names "nodeproject"
