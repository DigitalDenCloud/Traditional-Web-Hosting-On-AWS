variable "region" {
  description = "The AWS region"
  default     = "eu-west-2"
}

variable "project_name" {
  description = "The name of the project"
  default     = "Traditional Web Hosting On AWS"
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
  default     = "TF"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.1.0.0/16" 
}

variable "public_subnet_az1_cidr" {
  description = "CIDR block for public subnet AZ1"
  default     = "10.1.0.0/24"
}

variable "public_subnet_az2_cidr" {
  description = "CIDR block for public subnet AZ2"
  default     = "10.1.1.0/24"
}

variable "private_subnet_az1_cidr" {
  description = "CIDR block for private subnet AZ1"
  default     = "10.1.2.0/23"
}

variable "private_subnet_az2_cidr" {
  description = "CIDR block for private subnet AZ2"
  default     = "10.1.4.0/23"
}
