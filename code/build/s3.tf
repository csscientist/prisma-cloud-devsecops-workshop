provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "0238e43c-000d-48b7-ad81-c0cbf1b17896"
    git_commit           = "999b152ab398199cedc133d0019f812fdf55f6e7"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-13 20:53:02"
    git_last_modified_by = "41717799+csscientist@users.noreply.github.com"
    git_modifiers        = "41717799+csscientist"
    git_org              = "csscientist"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
