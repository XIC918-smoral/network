terraform {
  backend "s3" {
    bucket = "my-network-bucket"
    key    = "env/non-prod/network.tfstate"
    region = "ap-south-1"
  }
}