resource "aws_instance" "myec2" {
ami =var.ami
instance_type= var.type
key_name = var.key
vpc_security_group_ids = [aws_security_group.remote-sg.id]
 count=2
}
resource "null_resource" "remot" {
 count=2
connection {
type="ssh"
user="ubuntu"
private_key = file("./ShyamKey.pem")
host = aws_instance.myec2[count.index].public_ip
}
provisioner "file" {
source = "./script.sh"
destination = "/home/ubuntu/script"
}
provisioner "remote-exec" {
inline = [
"chmod +x /home/ubuntu/script",
 "sudo /home/ubuntu/script"
