module "s3_bucket" {
  source = "../../modules/S3"
  bucket_name = var.bucket_name
  force_destroy = var.force_destroy
  object_lock = var.object_lock
}