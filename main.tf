provider "aws" {


  region = "ap-south-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "demo-terraform-eks-state-bucket-kar-2026"

  lifecycle {
    prevent_destroy = false
  }

}
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-eks-state-karahane"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
