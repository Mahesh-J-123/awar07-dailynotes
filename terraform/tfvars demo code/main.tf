
provider "aws" {
  region = var.region_id
  profile = var.profile_id
}

resource "aws_instance" "web-server" {
  count                   = var.instance_count
  ami                     = var.ami_id
  instance_type           = var.instance_type
  disable_api_termination = var.api_termination

  tags = {
    Name        = var.name
    Environment = var.environemnt
  }
}