# export the region
output "region" {
  value = var.region
}

# export the project name
output "project_name" {
  value = var.project_name
}

# export the first availability zone
output "availability_zone_1" {
  value = aws_subnet.public_subnet_az1.availability_zone
}

# export the second availability zone
output "availability_zone_2" {
  value = aws_subnet.public_subnet_az2.availability_zone
}

# export the VPC ID
output "vpc_id" {
  value = aws_vpc.vpc.id
}

# export the Internet Gateway ID
output "internet_gateway" {
  value = aws_internet_gateway.internet_gateway.id
}

# export the public subnet az1 ID
output "public_subnet_az1_id" {
  value = aws_subnet.public_subnet_az1.id
}

# export the public subnet az2 ID
output "public_subnet_az2_id" {
  value = aws_subnet.public_subnet_az2.id
}

# export the private subnet az1 ID
output "private_subnet_az1_id" {
  value = aws_subnet.private_subnet_az1.id
}

# export the private subnet az2 ID
output "private_subnet_az2_id" {
  value = aws_subnet.private_subnet_az2.id
}
