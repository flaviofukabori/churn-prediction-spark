provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "${var.aws_credentials_path}"
  profile = "terraform-flavio-profile"
}