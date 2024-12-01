# Variables
variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type_1" {
  description = "Instance type for first EC2"
  default     = "t2.micro"
}

variable "instance_type_2" {
  description = "Instance type for second EC2"
  default     = "t2.small"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for subnet"
  default     = "10.0.1.0/24"
}

variable "environment" {
  description = "Environment name"
  default     = "Dev"
}

variable "instance_name_prefix" {
  description = "Prefix for instance names"
  default     = "my-instance"
}

variable "bucket_prefix" {
  description = "Prefix for S3 bucket name"
  default     = "my-dynamic-bucket-"
}

variable "allowed_cidr_blocks" {
  description = "CIDR blocks allowed for SSH access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Environment = "Dev"
    Project     = "MyProject"
    Terraform   = "true"
  }
} 