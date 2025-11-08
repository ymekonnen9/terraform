# environments/dev/main.tf

module "app_stack" {
  source = "../../modules/aws-app-stack"

  # --- Pass variables from our environment into the module ---
  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  private_subnet_cidrs = var.private_subnet_cidrs
  public_subnet_cidrs  = var.public_subnet_cidrs
}