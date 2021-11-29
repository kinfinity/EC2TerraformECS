resource "aws_subnet" "pub_subnet1" {
    vpc_id                  = data.aws_vpc.vpc_selected.id
    cidr_block              = var.subnet_cidr_block1
    availability_zone = "eu-west-3a"
    tags = {
        Name =  "${var.env}-${var.name}-pub-subnet1"
    }

    depends_on = [
      data.aws_vpc.vpc_selected
    ]
}

resource "aws_subnet" "pub_subnet2" {
    vpc_id                  = data.aws_vpc.vpc_selected.id
    cidr_block              = var.subnet_cidr_block2
    availability_zone = "eu-west-3b"
    tags = {
        Name =  "${var.env}-${var.name}-pub-subnet2"
    }

    depends_on = [
      data.aws_vpc.vpc_selected
    ]
}