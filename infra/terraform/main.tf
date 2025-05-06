provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "flask_enduser_secgroup" {
    name = flask-enduser-secgroup
    description = "security groups for the Flask app"
    vpc_id = var.vpc_id



    ingress {
        from_port = 22
        to_port = 22
        protocol = SSH
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {
        from_port = 5000
        to_port = 5000
        protocol = http
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    egress = {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}


resource "aws_instance" "t2.micro_ec2_instance" {
    ami = var.ami_id
    instance_type = var.EC2_instance
    security_groups = [aws_security_group.flask_enduser_secgroup.name]

    tags = {
        name = "flask_app_instance"
    }
  
}