provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "ab-18-07-2024-terraformer-state-test-1"
    key    = "terraform.tfstate_4"
    region = "us-west-2"
  }
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_1_4" {
  name  = "ab_18_07_2024_terraformer_test_1_4"
  type  = "String"
  value = "This is a test parameter"
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_2_4" {
  name  = "ab_18_07_2024_terraformer_test_2_4"
  type  = "String"
  value = "This is a test parameter"
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_3_4" {
  name  = "ab_18_07_2024_terraformer_test_3_4"
  type  = "String"
  value = "This is a test parameter"
}

output "ab_18_07_2024_terraformer_test_1_4" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_1_4.arn
}

output "ab_18_07_2024_terraformer_test_2_4" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_2_4.arn
}

output "ab_18_07_2024_terraformer_test_3_4" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_3_4.arn
}
