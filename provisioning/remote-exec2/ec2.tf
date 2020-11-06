resource "aws_instance" "myec2" {
ami =var.ami
instance_type= var.type
key_name = var.key
vpc_security_group_ids = [aws_security_group.remote-sg.id]

connection {
type="ssh"
user="ubuntu"
private_key = file("./${var.key}")
host = aws_instance.myec2.public_ip
}
provisioner "remote-exec" {
inline = [
"sudo apt-get update",
 "sudo apt install nginx -y"
]
}
}
