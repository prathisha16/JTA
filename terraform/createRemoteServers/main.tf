resource "aws_key_pair" "project_key" {
  key_name   = "project_key_new"
  public_key = file("/var/lib/jenkins/project_key.pub")
}

resource "aws_instance" "web_server_1" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name = aws_key_pair.project_key.key_name

  tags = {
    Name = "Web-Server-1"
  }
}

resource "aws_instance" "web_server_2" {
  ami           = var.ami_id
  instance_type = var.instance_type

key_name = aws_key_pair.project_key.key_name

  tags = {
    Name = "Web-Server-2"
  }
}
