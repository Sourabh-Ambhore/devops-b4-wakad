output "vpc_name" {
  description = "vpc name and details"
  value       = aws_vpc.vpc_for_dev
}

output "igw" {
  value = aws_internet_gateway.igw-for-dev-vpc
}

output "subnets" {
  value = aws_subnet.public_subnet
  
}

output "subnet_private" {
  value = aws_subnet.private_subnet
}