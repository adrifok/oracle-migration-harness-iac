variable "project_name" {
  type    = string
  default = "migration-harness"
}

variable "ssh_public_key" {
  type = string
}

variable "my_public_ip_cidr" {
  type        = string
  description = "Your public IP in CIDR notation, e.g. 1.2.3.4/32"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}
