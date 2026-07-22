variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Ubuntu AMI ID"

  default = "ami-052355af2a014bd2c"
}
variable "instance_type" {
  default = "t2.micro"
}

key_name = aws_key_pair.project_key.key_name
