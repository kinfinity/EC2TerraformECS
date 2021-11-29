variable "env" {
  description = "Project Environment"
  type        = string
}
variable "project_name" {
  description = "Project Name"
  type        = string
  default     = "EC2TerraformECS"
}

variable "nodeserver_ecr" {
  description = "Node Server Container Registry"
  type        = string
  default     = "node-server"
}
