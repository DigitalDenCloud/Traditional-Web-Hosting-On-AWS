# create security group for the application load balancer
resource "aws_security_group" "alb_security_group" {
  name        = "WebServer-ALB"
  description = "enable http/https access on port 80/443"
  vpc_id      = var.vpc_id

  ingress {
    description      = "http access"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [0.0.0.0/0]
  }

  ingress {
    description      = "https access"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [0.0.0.0/0]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = -1
    cidr_blocks      = [0.0.0.0/0]
  }

  tags   = {
    Name = "ALB Security Group"
  }
}

# create security group for the web server
resource "aws_security_group" "web_server_security_group" {
  name        = "WebServer-SG"
  description = "enable http/https access on port 80/443 via alb sg"
  vpc_id      = var.vpc_id

  ingress {
    description      = "http access"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    security_groups  = [aws_security_group.alb_security_group.id]
  }

  ingress {
    description      = "ssh access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    security_groups  = [0.0.0.0/0]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = -1
    cidr_blocks      = [0.0.0.0/0]
  }

  tags   = {
    Name = WebServer Security Group
  }
}

# create security group for the vpc endpoints
resource "aws_security_group" "vpc_endpoints_security_group" {
  name        = "VPC-Endpoint-SG"
  description = "Security group for Systems Manager VPC endpoints"
  vpc_id      = var.vpc_id

  ingress {
    description      = "https access"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [10.1.0.0/16]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = -1
    cidr_blocks      = [0.0.0.0/0]
  }

  tags   = {
    Name = VPC Endpoints Security Group
  }
}