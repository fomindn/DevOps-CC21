# An Availability Zone is a distinct location within a Region that is insulated from failures in other 
# Availability Zones, and provides inexpensive, low-latency network connectivity to other Availability 
# Zones in the same Region.

# IMPORTANT: The AWS Load Balancer Controller workflow checks subnet tags for the value of "" (empty 
# string) and 1. 
# For private subnets, set the value of the "kubernetes.io/role/internal-elb" tag to an empty string or 1. 
# For public subnets, set the value of the "kubernetes.io/role/elb" tag to an empty string or 1. 
# These tags allow your subnets to be auto-discovered from the Amazon EKS VPC subnets of your 
# Application Load Balancer.
# https://aws.amazon.com/ru/premiumsupport/knowledge-center/eks-subnet-auto-discovery-alb/

# Resource: aws_subnet
# https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet


resource "aws_subnet" "public_1" {
  # The VPC ID
  vpc_id = aws_vpc.main.id

  # The CIDR block for the subnet
  cidr_block = "192.168.0.0/18"

  # The AZ (Availability Zone) for the subnet
  availability_zone = "eu-central-1a"

  # Required for EKS. Instances launched into the subnet should be assigned a public IP address
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource.
  tags = {
    Name = "public-eu-central-1a"
    # Tag all public and private subnets that your cluster uses for load balancer resources with 
    # the following key-value pair:
    #   Key: kubernetes.io/cluster/cluster-name
    #   Value: shared
    # The shared value allows more than one cluster to use the subnet.
    "kubernetes.io/cluster/eks" = "shared"
    # Allow the ALB (Application Load Balancer) Ingress Controller 
    # to create a load balancer using auto-discovery.
    # Set to 1 or empty tag value for internet-facing load balancers.
    "kubernetes.io/role/elb" = 1
  }

}



resource "aws_subnet" "public_2" {
  # The VPC ID
  vpc_id = aws_vpc.main.id

  # The CIDR block for the subnet
  cidr_block = "192.168.64.0/18"

  # The AZ (Availability Zone) for the subnet
  availability_zone = "eu-central-1b"

  # Required for EKS. Instances launched into the subnet should be assigned a public IP address
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource.
  tags = {
    Name                        = "public-eu-central-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }

}
