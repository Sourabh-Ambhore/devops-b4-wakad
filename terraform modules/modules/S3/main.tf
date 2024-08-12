resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket = var.bucket_name
  force_destroy = var.force_destroy
  object_lock_enabled = var.object_lock

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}