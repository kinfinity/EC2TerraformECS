# node server image ecr
 resource "aws_ecr_repository" "nodeserver_ecr" {

  name                   = "${var.env}/${var.nodeserver_ecr}"
  image_tag_mutability  = "MUTABLE" 

  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    "usage" = "node server image repository"
  }
}
