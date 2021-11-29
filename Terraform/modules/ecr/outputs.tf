#
data "aws_ecr_repository" "nodeserver_ecr" {
  name = "${var.env}/${var.nodeserver_ecr}"
  depends_on = [
    aws_ecr_repository.nodeserver_ecr
  ]
}

output "registry_id" {
  description = "The ID of the VPC"
  value       = data.aws_ecr_repository.nodeserver_ecr.registry_id
}

output "repository_url" {
  description = "The ID of the VPC"
  value       = data.aws_ecr_repository.nodeserver_ecr.repository_url
}
