terraform {
  backend "s3" {
    bucket         = "frhn-prod-app-bucket"
    key            = "prod/terraform.tfstate"         # Use a unique path per environment
    region         = "us-west-2"
    dynamodb_table = "frhn-prod-app-db"
    use_lockfile   = true
    encrypt        = true
  }
}

