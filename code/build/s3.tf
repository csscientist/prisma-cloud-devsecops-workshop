provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "5313fa31-c966-4daf-aa30-330ed4e25673"
    git_commit           = "28eee7c1acc7e10775ba1a4349daa3cf2c22ed88"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-13 19:46:19"
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
