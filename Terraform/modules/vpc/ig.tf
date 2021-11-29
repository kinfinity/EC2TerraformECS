
resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = data.aws_vpc.vpc_selected.id

    tags = {
        Name =  "${var.env}-${var.name}-ig"
    }
    depends_on = [
      data.aws_vpc.vpc_selected
    ]
}