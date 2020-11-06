resource "aws_instance" "myec2" {
   ami = "ami-07efac79022b86107"
   instance_type = "t2.micro"
   key_name = "shyam"


provisioner "remote-exec" {
inline = [
 "sudo apt-get update",
 "sudo apt install nginx -y"
]


   connection {
     type = "ssh"
     user = "ubuntu"
     private_key = file("./shyam.pem")
     host = self.public_ip
   }
}
}
