## create iam policy
cat <<EOF > role_assume_policy.json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF

## create iam role
IAM_ROLE_ARN=$(aws iam create-role \
--role-name CodeBuildServiceRole \
--assume-role-policy-document file://role_assume_policy.json \
--query 'Role.Arn' \
--output text)

## attach some policies to the role (S3, CodeCommit, CloudWatch)
aws iam attach-role-policy \
--policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess \
--role-name CodeBuildServiceRole &&
aws iam attach-role-policy \
--policy-arn arn:aws:iam::aws:policy/AWSCodeCommitFullAccess \
--role-name CodeBuildServiceRole &&
aws iam attach-role-policy \
--policy-arn arn:aws:iam::aws:policy/CloudWatchFullAccess \
--role-name CodeBuildServiceRole
