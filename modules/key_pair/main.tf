resource "aws_key_pair" "lumston-key"{
 key_name        = "${var.key_name}"
 public_key      = "${var.public_key}"
 tags	  	       = "${var.key_tags}"
}

