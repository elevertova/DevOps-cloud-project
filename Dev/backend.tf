terraform {
  backend "s3" {
    bucket         = "frhn-dev-app-bucket"
    key            = "dev/terraform.tfstate"         # Use a unique path per environment
    region         = "us-west-2"
    #dynamodb_table = "frhn-dev-app-db"
    use_lockfile   = true
    encrypt        = true
  }
}