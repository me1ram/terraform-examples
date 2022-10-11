resource "aws_s3_bucket" "this" {
  bucket = var.mybucket_name
  ##  count         = var.s3_bucket_quantity
  for_each            = var.buckets
  force_destroy       = var.force_destroy
  object_lock_enabled = var.object_lock_enabled
}

/*
resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.mybucket.id
  acl    = var.acl_type
}
*/