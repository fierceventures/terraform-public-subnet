output "id" {
  value = "${aws_vpc.vpc.id}"
}

output "private_subnet_1_id" {
  value = "${aws_subnet.private_subnet_1.id}"
}

output "private_subnet_2_id" {
  value = "${aws_subnet.private_subnet_2.id}"
}

output "public_subnet_id" {
  value = "${aws_subnet.public_subnet.id}"
}

output "public_subnet_cidr" {
  value = "${aws_subnet.public_subnet.cidr_block}"
}

output "private_subnet_1_cidr" {
  value = "${aws_subnet.private_subnet_1.cidr_block}"
}

output "private_subnet_2_cidr" {
  value = "${aws_subnet.private_subnet_2.cidr_block}"
}

output "vpc_cidr" {
  value = "${aws_vpc.vpc.cidr_block}"
}
