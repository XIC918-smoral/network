provider "aws" {
  region = var.region
}

module "vpc" {

  source = "../"

  name                 = var.name
  cidr_block           = var.cidr_block
  #enable_dns_hostnames = true
  enable_vpc_logs      = false
  public_subnets_cidr  = var.public_subnets_cidr
  #pvt_zone_name        = var.pvt_zone_name
  private_subnets_cidr = var.private_subnets_cidr
  avaialability_zones  = var.avaialability_zones
  # logs_bucket          = var.logs_bucket
  # logs_bucket_arn      = var.logs_bucket_arn
  tags                 = var.tags
  #public_web_sg_name   = var.public_web_sg_name
  #public_subnet_name   = var.public_subnet_name
  #private_subnet_name  = var.private_subnet_name
}