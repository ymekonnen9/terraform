# modules/aws-app-stack/database.tf

resource "aws_dynamodb_table" "main" {
  name         = var.db_table_name
  billing_mode = var.db_billing_mode
  hash_key     = var.db_hash_key

  attribute {
    name = var.db_hash_key
    type = "S" # 'S' for String
  }

  tags = {
    Project   = "my-serverless-app"
    ManagedBy = "Terraform"
  }
}