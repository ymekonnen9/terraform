# environments/dev/outputs.tf

output "vpc_id" {
  description = "The ID of our main VPC."
  value       = module.app_stack.vpc_id
}

output "private_subnets" {
  description = "A list of private subnet IDs."
  value       = module.app_stack.private_subnets
}