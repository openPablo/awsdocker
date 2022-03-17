# AWS cli + Docker cli
Container image containing both aws cli and docker cli.
Handy for pipelines which need to build a docker image and push it to aws ecr.

# Lightweight
About 189 MB in size

#jq

Added jq to enable easy secretsmanager usage
aws secretsmanager get-secret-value --secret-id "example" --query SecretString --output text | jq -r .example