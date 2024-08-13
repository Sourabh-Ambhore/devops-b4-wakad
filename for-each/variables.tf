variable "for_each_subnet" {
  type = map(any)
  default = {
    subnet1 = {
    subnet_name = "private_1"
    cidr_block  = "10.0.0.0/24"
    az = "ap-south-1a"
   }
    subnet2 = {
    subnet_name = "private_2"
    cidr_block  = "10.0.1.0/24"
    az = "ap-south-1a"
   }
    subnet3 = {
    subnet_name = "private_3"
    cidr_block  = "10.0.2.0/24"
    az = "ap-south-1a"
   }
  }
}

variable "for_each_subnet_public" {
  type = map(any)
  default = {
    subnet1 = {
    subnet_name = "public_1"
    cidr_block  = "10.0.3.0/24"
    az = "ap-south-1b"
    public_ip = true
   }
    subnet2 = {
    subnet_name = "public_2"
    cidr_block  = "10.0.4.0/24"
    az = "ap-south-1b"
     public_ip = false
   }
    subnet3 = {
    subnet_name = "public_3"
    cidr_block  = "10.0.5.0/24"
    az = "ap-south-1b"
    public_ip = true
   }
  }
}
