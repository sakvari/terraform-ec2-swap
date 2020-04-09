#resource "aws_subnet" "lumstonSubNet" {
# vpc_id 		    = "${aws_default_vpc.default.id}"
# availability_zone 	= "${var.availability_zone}" 
# cidr_block         = "${var.cidr_block}"
#}
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_default_subnet" "default_subnet_tf" {
  availability_zone = "${var.availability_zone}"

  tags = {
    Name = "Default subnet for terraform"
  }
}
