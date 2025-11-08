# environments/dev/providers.tf

variable "aws_region" {
  description = "The AWS region for the dev environment."
  type        = string
  default     = "us-west-2"
}

provider "aws" {
  region = var.aws_region
}