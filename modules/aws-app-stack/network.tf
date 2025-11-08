# modules/aws-app-stack/network.tf

# Get all available AZs in the region
data "aws_availability_zones" "available" {
  state = "available"
}

# Call the public VPC module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.10.0"

  # Use the inputs from our variables.tf file
  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = data.aws_availability_zones.available.names
  private_subnets = var.private_subnet_cidrs
  public_subnets  = var.public_subnet_cidrs

  # --- Production-ready settings ---
  enable_nat_gateway = true
  single_nat_gateway = true # Saves money in dev
  enable_dns_hostnames = true

  tags = {
    Project   = "my-serverless-app"
    ManagedBy = "Terraform"
  }
}