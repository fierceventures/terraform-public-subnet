output "public_subnet_id" {
  value = "${aws_subnet.public_subnet.id}"
}

output "public_subnet_cidr" {
  value = "${aws_subnet.public_subnet.cidr_block}"
}
