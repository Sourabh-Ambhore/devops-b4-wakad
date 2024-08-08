resource "aws_vpc" "vpc_for_dev" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy

  tags = merge(var.additional_tags,
  {
    Name = "${var.company_name}-${var.region}-${var.env.0}-vpc"
  }
              )
}

resource "aws_internet_gateway" "igw-for-dev-vpc" {
  vpc_id = aws_vpc.vpc_for_dev.id

  tags = merge(var.additional_tags,
  {
    #Name = "${var.company_name}-${var.region}-${var.env.0}-IGW"
    Name  = format("%s-%s-%s-IGW",var.company_name,var.region,var.env.0)
  }
               )
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc_for_dev.id
  count                   = length(var.cidr_block_for_public_subnets)
  cidr_block              = var.cidr_block_for_public_subnets[count.index]
  map_public_ip_on_launch = var.map_public_ip

  tags = {
    Name = "public-subnet-${count.index+1}"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc_for_dev.id
  count      = length(var.cidr_block_for_private_subnets)
  cidr_block = var.cidr_block_for_private_subnets[count.index]

    tags = merge(
    { Name = "private-subnet-test-${count.index+1}" }, 
    var.additional_tags
  )
  
}

