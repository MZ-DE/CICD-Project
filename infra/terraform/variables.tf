variable "aws_region" {
    type = string
    description = "AWS Region"
    default = "eu-central-1"
  
}

variable "ami_id" {
    type = string
    description = "ami id for EC2 instances"
}

variable "EC2_instance" {
    type = string
    description = "EC2 instances ID"
    default = "t2.micro"
  
}

variable "vpc_id" {
  type = string
  description = "vpc id for security group"
}

variable "ssh-key" {
    type = string
    description = "SSH key to connect with terraform via SSH"
  
}