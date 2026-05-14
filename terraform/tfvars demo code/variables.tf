variable "region_id" {
  type = string
  default = "ap-south-1"
}

variable "profile_id" {
  type = string
}

variable "instance_type" {
  type    = string
}

variable "ami_id" {
  type    = string
  default = "ami-01b40e1bcccae197a"
}

variable "instance_count" {
  type    = number
}

variable "api_termination" {
  type    = bool
}

variable "environemnt" {
  type    = string
}

variable "name" {
  type    = string
}
