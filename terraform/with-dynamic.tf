# provider "aws" {
#   region = "ap-south-1"
# }

#     locals {
#         ingress_rules = [
#             {port = 22 },
#             {port = 80 },
#             {port = 443 },
#             {port = 8080 },
#             {port = 8888 }
#         ]
#         }

# resource "aws_security_group" "My_Web_Sg" {
#   name = "Manual security group"
#   vpc_id = "vpc-12345678"

#   dynamic "ingress" {
#     for_each = local.ingress_rules
#     content {
#       from_port = ingress.value.port
#       to_port = ingress.value.port
#       protocol = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   }
# }