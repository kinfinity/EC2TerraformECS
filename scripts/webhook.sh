## create the webhook
aws codebuild create-webhook --project-name "nodeproject" --filter-groups "[[{\"type\":\"EVENT\",\"pattern\":\"PUSH\"}]]" --build-type "BUILD"
