resource "aws_security_group" "remote-sg" {
 name = "allow_ssh"
 description = "allow ssh and 80"

ingress {
description ="ssh-port"
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
description ="http"
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
egress {
description = "allowed outbound"
from_port = 0
to_port = 65535
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
