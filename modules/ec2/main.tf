data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "instancia-tf" {
  ami                         = "${data.aws_ami.ubuntu.id}"
  instance_type               = "${var.ec2_type}"
  tags                        = "${var.tag_ec2}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  key_name                    = "${var.key_name}"
  availability_zone           = "${var.availability_zone}"
  vpc_security_group_ids      = ["${var.vpc_security_group_ids}"]
  volume_tags                 = "${var.tag_ec2}"
  disable_api_termination     = true
  root_block_device {
    volume_size           = "${var.volume_size}"
    volume_type           = "${var.volume_type}"
    delete_on_termination = "${var.volume_delete_on_termination}"
  }

  user_data = <<EOF
   #! /bin/bash
   sudo apt update
   sudo apt upgrade -y
EOF

}

resource "aws_ebs_volume" "volume-swap" {
  availability_zone = "${var.availability_zone}"
  size              = "${var.swap-gib}"
  tags              = "${var.tag_ec2}"
}
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.volume-swap.id}"
  instance_id = "${aws_instance.instancia-tf.id}"
  
  #depends_on  = [aws_ebs_volume.volume-swap, aws_instance.instancia-tf]

  provisioner "local-exec" {
     command = "sleep 120; ansible-playbook ../../modules/ec2/ansible/swap.yml -u ubuntu -i '${aws_instance.instancia-tf.public_ip}', --private-key=.aws/${var.key_name}"
  }

}



