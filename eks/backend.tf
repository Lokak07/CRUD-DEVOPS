    // backend.tf
    terraform {
    backend "s3" {
        bucket         = "my-tf-backend-eks"
        key            = "my-tf-backend-eks/eks"
        region         = "us-east-1"
        encrypt        = true
    }
    }
