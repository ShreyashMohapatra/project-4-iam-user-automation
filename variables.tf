variable "aws_region" {
  default = "ap-south-1"
}

variable "iam_username" {
  default = "project4-s3-reader-shreyash"
}

variable "policy_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
