#security Group app port y ssh 

resource "aws_security_group" "frontEnd"{
 name        	= "${var.name-sg}"
 description 	= "Only SSH and APP port inbound"
 vpc_id 		= "${var.vpc_id}"
 tags 			= "${var.sgtags}"
	ingress {
	from_port 	= "${var.app_port}"
	to_port 	= "${var.app_port}"
	protocol	= "TCP"
	cidr_blocks	= ["0.0.0.0/0"]
	}
	ingress{ 
	from_port	= 22
	to_port		= 22
	protocol	= "TCP"
	cidr_blocks	= ["${var.cidr_access}"]
	}
	egress {
  	from_port   = 0
  	to_port     = 0
 	protocol    = "-1"
  	cidr_blocks = ["0.0.0.0/0"]
	}

}
