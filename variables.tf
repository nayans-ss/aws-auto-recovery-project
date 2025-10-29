# AWS Region
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# EC2 instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Key pair name for SSH access
variable "key_name" {
  description = "Name of the existing EC2 key pair"
  type        = string
}

# Tags
variable "project_name" {
  description = "Tag name for project"
  type        = string
  default     = "ResilientAWSWebApp"
}
