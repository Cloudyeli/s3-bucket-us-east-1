resource "aws_s3_bucket" "ta_backend_bucket" {
    bucket = "s3-bucket-us-east-1-06-10-2022"

    lifecycle {
      prevent_destroy = true
    }

    tags = {
        Name = "s3-bucket-us-east-1-06-10-2022"
        Environment = "Excercise"
        Team        = "Talent-Academy"
        Owner       = "Yelizaveta"
    }
}

resource "aws_s3_bucket_versioning" "version_my_bucket" {
  bucket = aws_s3_bucket.ta_backend_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}