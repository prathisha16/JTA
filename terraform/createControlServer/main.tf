resource "aws_key_pair" "project_key" {
  key_name   = "project_key"
  public_key = file("/var/lib/jenkins/project_key.pub")
}

resource "aws_instance" "control_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name = aws_key_pair.project_key.key_name
  user_data = file("${path.module}/userdata/control.sh")
  tags = {
    Name = "Control-Server"
  }
 
}
