
locals {
  myBucketName = "${var.bucketPrefix}-${random_string.random.result}"
}

resource "random_string" "random" {
  length = 5
  special = false
  min_lower = 5
}

resource "aws_s3_bucket" "mybucket" {
  bucket = local.myBucketName
  
  tags = {
    Name        = local.myBucketName
    Environment = "Dev"
    Description = "Temporary bucket for presentation"
  }
}

resource "aws_s3_bucket_acl" "mybucket" {
  bucket = aws_s3_bucket.mybucket.bucket
  acl = "private"
}

resource "aws_s3_bucket_public_access_block" "mybucket" {
  bucket = aws_s3_bucket.mybucket.id
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}