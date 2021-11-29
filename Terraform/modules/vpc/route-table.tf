resource "aws_route_table" "public" {
    vpc_id = data.aws_vpc.vpc_selected.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = data.aws_internet_gateway.default.id
    }
    depends_on = [
      aws_internet_gateway.internet_gateway
    ]
}

resource "aws_route_table_association" "route_table_association1" {
    subnet_id      = data.aws_subnet.subnet_selected1.id
    route_table_id = aws_route_table.public.id
    depends_on = [
      aws_subnet.pub_subnet1
    ]
}

resource "aws_route_table_association" "route_table_association2" {
    subnet_id      = data.aws_subnet.subnet_selected2.id
    route_table_id = aws_route_table.public.id
    depends_on = [
      aws_subnet.pub_subnet2
    ]
}