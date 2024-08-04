variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "main-vpc"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_az" {
  description = "The availability zone for the public subnet"
  type        = string
  default     = "us-west-2a"
}

variable "public_subnet_name" {
  description = "The name of the public subnet"
  type        = string
  default     = "public-subnet"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_az" {
  description = "The availability zone for the private subnet"
  type        = string
  default     = "us-west-2a"
}

variable "private_subnet_name" {
  description = "The name of the private subnet"
  type        = string
  default     = "private-subnet"
}

variable "igw_name" {
  description = "The name of the Internet Gateway"
  type        = string
  default     = "main-igw"
}

variable "nat_gw_name" {
  description = "The name of the NAT Gateway"
  type        = string
  default     = "main-nat-gw"
}

variable "eip_name" {
  description = "The name of the Elastic IP"
  type        = string
  default     = "main-eip"
}

variable "public_rt_name" {
  description = "The name of the public route table"
  type        = string
  default     = "public-rt"
}

variable "private_rt_name" {
  description = "The name of the private route table"
  type        = string
  default     = "private-rt"
}
