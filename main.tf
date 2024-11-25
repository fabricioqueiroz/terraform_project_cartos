provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "ec2_instance" {
  source         = "./modules/ec2"
  vpc_id         = module.vpc.vpc_id
  public_subnet  = module.vpc.public_subnet
  private_subnet = module.vpc.private_subnet
}

module "cloudfront" {
  source             = "./modules/cloudfront"
  origin_dns_name    = module.ec2_instance.public_dns
  certificate_arn    = var.ssl_certificate_arn
}

output "application_url" {
  value = module.cloudfront.cloudfront_url
}
