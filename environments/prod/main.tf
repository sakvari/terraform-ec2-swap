module "network" {
 source 		    = "../../modules/network"
 availability_zone	= "${var.availability_zone}"
}

module "securityGroups" {
 source		    = "../../modules/securityGroups"
 sgtags		    = "${var.sgtags}"
 app_port	    = "${var.app_port}"
 cidr_access	= "${var.cidr_access}"
 vpc_id	    	= "${module.network.vpc_id}"
 name-sg        = "${var.name-sg}"
}

module "key_pair" {
 source		        = "../../modules/key_pair"
 key_name	        = "${var.key_name}"
 public_key	        = "${var.public_key}"
 key_tags	        = "${var.key_tags}" 
}

module "ec2" {
 source 			            = "../../modules/ec2"
 ec2_type 			            = "${var.ec2_type}"
 tag_ec2 			            = "${var.tag_ec2}"
 associate_public_ip_address	= "${var.associate_public_ip_address}"
 key_name			            = "${module.key_pair.aws_key_name}"
 availability_zone	            = "${var.availability_zone}"
 volume_size           		    = "${var.volume_size}"
 volume_type           		    = "${var.volume_type}"
 volume_delete_on_termination	= "${var.volume_delete_on_termination}"
 swap-gib                       = "${var.swap-gib}"
 vpc_security_group_ids         = "${module.securityGroups.sg_id}"
}

