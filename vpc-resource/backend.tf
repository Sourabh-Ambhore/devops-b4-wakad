terraform {
  backend "s3" {
    bucket  = "wakad-b4-tf-state-bucket"
    key     = "vpc/terraform.tfstate"
    region  = "ap-south-1"
    profile = "terraform"
  }
}

# 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