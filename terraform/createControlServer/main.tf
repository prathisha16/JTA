resource "aws_instance" "control_server" {

  ami           = var.ami_id
  instance_type = var.instance_type

resource "aws_key_pair" "project_key" {
  key_name   = "project_key"
  public_key = file("${path.module}/keys/project_key.pub")
}

  tags = {
    Name = "Control-Server"
  }
}
