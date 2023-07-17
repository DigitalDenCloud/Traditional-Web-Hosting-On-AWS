<br />

![Architecture Diagram](images/part2-architecture.png)
  <h1 align="center">Traditional-Web-Hosting-On-AWS</h1>
  <p align="center">
    <br />
    Building and Scaling a Traditional Web Hosting Architecture on AWS with EC2, VPC, Load Balancing, Auto Scaling, and Networking.
  </p>
</p>

### Project date
------------------
- Deployed via Management Console - TBC
- Deployed via Terraform - TBC

### Tech Stack
------------------
- Amazon EC2
- Amazon VPC
- Application Load Balancer
- Amazon Route 53
- Auto Scaling

### Project Description
-----------------
Many companies utilize a number of traditional technologies within AWS to deliver applications, most of which are less managed than the serverless technologies. These include Elastic Cloud Compute (EC2), which provides virtual machines in AWS, and Virtual Private Cloud (VPC), which provides virtual networking constructs in AWS.

This project explores the traditional technologies, especially focused on the networking stacks within AWS.

### More Information
------------------

Part 1: Deploy a Highly Available Virtual Private Cloud (VPC)
- [Blog](https://awstip.com/traditional-web-hosting-on-aws-3d2f1fc4524a)
- [Lab](https://www.youtube.com/watch?v=wdHhvifXs14&t=1200s)

Part 2: Load Balancing and Automatic Scaling To further enhance the availability and scalability of my application.
- Blog (coming soon)
- Lab (coming soon)

### Objectives
-----------------

### Part 1: Deploy a Highly Available Virtual Private Cloud (VPC)


![Part 1 Architecture](images/part1-architecture.png)

- [X] Create Public and Private Subnets in two Availability Zones.
- [X] Create an Internet Gateway and attach to VPC.
- [X] Create a Network Address Translation (NAT) gateway in both of the public subnets for high availability.
- [X] Configure the network to send internet-bound traffic from instances in Private Subnets to the NAT gateway.
- [X] Configure Route Tables and add a route to direct internet-bound traffic (0.0.0.0/0) to the internet gateway.
- [X] Edit subnet associations. 
- [X] Create a Security Group for the Web Server and configure it to permit HTTP (port 80) traffic that comes from anywhere on the internet (0.0.0.0/0).
- [X] Launch a Web Server EC2 Instance in the Public Subnet to test VPC is configured correctly.
- [X] Confirm that the Web Server EC2 instance can be accessed from the internet.

### Part 2: Load Balancing and Automatic Scaling To further enhance the availability and scalability of my Web Server

- [X] Create an Application Load Balancer in Web Server VPC in Public Subnets 1 and Public Subnet 2. Create a new security group to enable web access to the load balancer. Assign the security group to the load balancer. Create a target group. Configure the HTTP listener on port 80 to forward incoming traffic to the specified target group.
- [X] Launch an EC2 instance utilising the user_data property to deploy website on an Apache Web Server.
- [X] Create an AMI for Auto Scaling from the existing Web Server.
- [X] Create a Launch Template.
- [X] Setup Auto Scaling that uses the launch template and deploys EC2 instances in Private Subnet 1 and Private Subnet 2. Attach Application Load Balancer to the Auto Scaling group. Configure group size and target tracking scaling policy with CPU Utilization as the scaling metric. Add tags.
- [X] Update Web Server Security Group. Lock down EC2 instance’s Security Groups to only allow traffic from the Application Load Balancer.
- [X] Test the Web Server by connecting to the load balancer.
- [X] Test high availability by terminating one of the Web Server instances to simulate a failure.
- [x] Connect to an EC2 Instance in a Private Subnet using EC2 Instance Connect Endpoint.
- [X] Test automatic scaling under load. Start a stress test on the Web Server CPU.
