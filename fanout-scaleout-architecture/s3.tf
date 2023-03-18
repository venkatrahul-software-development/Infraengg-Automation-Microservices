# This creates s3 bucket and blocks public access as a security feature implementation

resource "aws_s3_bucket" "fanout_app" {
  bucket = "fanout_app"
}

resource "aws_s3_bucket_public_access_block" "fanout_app" {
  bucket = aws_s3_bucket.fanout_app.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}