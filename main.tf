terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_iam_user" "s3_user" {
  name = var.iam_username
}

resource "aws_iam_user_policy_attachment" "s3_read" {
  user       = aws_iam_user.s3_user.name
  policy_arn = var.policy_arn
}
