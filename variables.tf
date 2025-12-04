variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the new VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "azs" {
  description = "Number of AZs to create public/private subnets in"
  type        = number
  default     = 2
}

variable "ami" {
  description = "AMI ID for EC2 instances (region specific)"
  type        = string
  default     = "ami-0ecb62995f68bb549"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of an existing EC2 key pair for SSH access"
  type        = string
  default     = "ansible-key"
}

variable "ssh_cidr" {
  description = "CIDR block allowed to SSH into instance"
  type        = string
  default     = "203.0.113.45/32"
}

variable "nat" {
  description = "Create a NAT Gateway for private subnets"
  type        = bool
  default     = true
}

variable "ebs_size" {
  description = "Root EBS volume size in GiB"
  type        = number
  default     = 8
}

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Name        = "my-ec2"
    Owner       = "ayush"
    Environment = "dev"
  }
}

variable "associate_public_ip" {
  description = "Assign public IP to EC2 in public subnet"
  type        = bool
  default     = true
}

variable "enable_http" {
  description = "Allow HTTP (80) from internet"
  type        = bool
  default     = true
}

variable "enable_https" {
  description = "Allow HTTPS (443) from internet"
  type        = bool
  default     = true
}

variable "enable_jenkins" {
  description = "Allow Jenkins UI on port 8080"
  type        = bool
  default     = true
}
