variable "desired_capacity" {
  type        = "string"
  default     = "1"
  description = "ASG desired capacity"
}

variable "min_size" {
  type        = "string"
  default     = "1"
  description = "ASG min size"
}

variable "max_size" {
  type        = "string"
  default     = "2"
  description = "ASG max size"
}

variable "key_name" {
  type        = "string"
  default     = "windows"
  description = "Key pair name"
}

variable "region" {
  type        = "string"
  default     = "us-east-1"
  description = "AWS region"
}

variable "az1" {
  type        = "string"
  default     = "us-east-1a"
  description = "AZ for subnet 1"
}

variable "az2" {
  type        = "string"
  default     = "us-east-1b"
  description = "AZ for subnet 2"
}

variable "instance_type" {
  type        = "string"
  default     = "m4.large"
  description = "AWS instance type"
}

# us-east1 ami: Windows_Server-2016-English-Full-Containers-2017.07.13
variable "ami" {
  type        = "string"
  default     = "ami-c014cbbd"
  description = "AMI for Windows"
}
