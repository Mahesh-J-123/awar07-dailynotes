# Fetch the latest Amazon Linux 2023 AMI
data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "description"
    values = ["Amazon Linux 2023*"]
  }
}

# Launch the EC2 instance using the fetched AMI
resource "aws_instance" "web_server" {
  ami           = data.aws_ami.al2023.id
  instance_type = "t3.micro"

  tags = {
    Name = "Amazon-Linux-2023-Instance"
  }
}
