variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Ubuntu AMI ID"

  default = "ami-04f167a56786e4b09"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Existing AWS Key Pair Name"
}
