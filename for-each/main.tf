resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "for-each-test-vpc"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.main.id
  for_each = var.for_each_subnet
  cidr_block = lookup(each.value, "cidr_block", null)
  availability_zone = lookup(each.value, "az", "ap-south-1a")
  tags = {
    Name = lookup(each.value, "subnet_name", "test")
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.main.id
  for_each = var.for_each_subnet_public
  cidr_block = lookup(each.value, "cidr_block", null)
  availability_zone = lookup(each.value, "az", null)
  map_public_ip_on_launch = lookup(each.value, "public_ip", null)
  tags = {
    Name = lookup(each.value, "subnet_name", null)
  }
}
