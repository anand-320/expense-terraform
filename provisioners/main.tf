resource "aws_instance" "test" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ data.aws_security_group.selected.id ]


  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "ec2-user"
      password = "DevOps321"
      host = "self.public_ip"

    }
    inline = [
    "sudo dnf install nginx -y",
    "dnf systemctl start nginx"
    ]
  }

}
data "aws_security_group" "selected" {
  name = "allow-all"
}