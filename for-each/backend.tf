terraform {
  backend "s3" {
    bucket  = "wakad-b4-tf-state-bucket"
    key     = "vpc/terraform.tfstate"
    region  = "ap-south-1"
    profile = "terraform"
  }
}