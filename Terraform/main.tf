# configure aws provider to establish a secure connection between terraform and aws
provider "aws" {
  region  = var.region
}

# create vpc
module vpc {
  source                      = "./modules/vpc"
  region                      = var.region
  project_name                = var.project_name
  environment                 = var.environment
  vpc_cidr                    = var.vpc_cidr
  public_subnet_az1_cidr      = var.public_subnet_az1_cidr
  private_subnet_az1_cidr     = var.private_subnet_az1_cidr
  public_subnet_az2_cidr      = var.public_subnet_az2_cidr
  private_subnet_az2_cidr     = var.private_subnet_az2_cidr
}