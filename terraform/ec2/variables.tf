variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
  default     = "ami-0f5ee92e2d63afc18"   # Ubuntu 22.04 (Mumbai)
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}
