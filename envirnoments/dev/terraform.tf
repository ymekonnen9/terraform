terraform{

  backend "s3" {
    bucket = "my-tf-state-serverless-app-yared-mekonnen"
    key = "env/dev/terraform.tfstate"
    region = "us-west-2"
    use_lockfile = true
    encrypt = true
  }


  required_providers{
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }

  required_version = ">= 1.2"
}