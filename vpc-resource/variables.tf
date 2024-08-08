variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR for vpc"
}

variable "instance_tenancy" {
  type        = string
  default     = "default"
  description = "tenancy for instances in VPC"
}

variable "vpc_name" {
  type        = string
  default     = "dev-vpc"
  description = "name of VPC"
}

variable "igw_for_dev_vpc" {
  type        = string
  default     = "igw_for_dev_VPC"
  description = "interet gateway for dev-vpc"
}

variable "cidr_block_for_public_subnets" {
  type        = list(string)
  default     = ["10.0.6.0/24", "10.0.7.0/24"]
  description = "subnet CIDR for public subnet dev-vpc"
}
variable "map_public_ip" {
  type        = bool
  default     = true
  description = "public Ip enable or not"
}

variable "subnet_name" {
  type        = list(string)
  default     = ["public_subnet", "private_subnet"]
  description = "subnets for dev-vpc"
}

variable "additional_tags" {
  type = map(any)
  default = {
    project_name = "test_123"
    purpose      = "dev_env"
    country      = "india"
  }
}

variable "env" {
  type        = list(string)
  default     = ["dev", "prod"]
  description = "name of env"
}

variable "company_name" {
  type        = string
  default     = "cloudblitz"
  description = "name of company"
}
variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "region of infra"
}

variable "az" {
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  description = "name of env"
}

variable "cidr_block_for_private_subnets" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24"]
  description = "subnet CIDR for private subnet dev-vpc"
}