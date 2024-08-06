resource "aws_vpc" "vpc_for_dev" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "igw-for-dev-vpc" {
  vpc_id = aws_vpc.vpc_for_dev.id

  tags = {
    Name = var.igw_for_dev_vpc
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.vpc_for_dev.id
  cidr_block = var.cidr_block_for_subnets.0
  map_public_ip_on_launch = var.map_public_ip

  tags = {
    Name = var.subnet_name.0
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc_for_dev.id
  cidr_block = var.cidr_block_for_subnets.1

  tags = {
    Name = var.subnet_name.1
  }
}