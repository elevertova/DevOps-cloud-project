terraform {
  backend "s3" {
    bucket         = "frhn-uat-app-bucket-temp"
    key            = "uat/terraform.tfstate"         # Use a unique path per environment
    region         = "us-west-2"
    dynamodb_table = "frhn-uat-app-db"
    use_lockfile   = true
    encrypt        = true
  }
}
