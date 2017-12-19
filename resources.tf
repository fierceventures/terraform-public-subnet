# Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.cidr_block}"
  map_public_ip_on_launch = true
  availability_zone = "${var.region}a"
}

# To public_subnet public route table
resource "aws_route_table_association" "public_subnet_association" {
  route_table_id = "${var.vpc_main_route_table_id}"
  subnet_id = "${aws_subnet.public_subnet.id}"
}
