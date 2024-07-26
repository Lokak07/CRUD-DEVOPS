terraform {
  backend "s3" {
    bucket = "my-tf-backend-eks"
    key    = "eks"
    region = "us-east-1"
  }
}

