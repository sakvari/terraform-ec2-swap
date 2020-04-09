#proveedor var
variable region {
  type		    = "string"
  description	= "AWS region of your resources"
}
variable shared_credentials_file {	
  type          = "string"
  description	  = "awk_keys file location"
}
variable profile { 		
  type          = "string"
  description	  = "AWS Profile from .aws/aws_keys file to cast the terraform script" 
}

#network var
variable availability_zone {
 type           = "string"
 description	  = "subnet_vpc availability zone"
}

#securityGroup var
variable app_port {
 type           = "string"
 description	  = "define port to run your app"
}
variable vpc_id {
 type		      = "string"
 description	= "module.network.vpc.id"
}
variable sgtags {
 type 		    = "map"
 description	= "tags for security group"
}
variable "cidr_access" {
  type        = "string"
  description = "enable access permissions to this network"
}

variable "name-sg" {
  type        = "string"
  description = "name of security group"
}


#key_pair
variable key_name {
 type           = "string"
 description 	  = "name of key"
}
variable public_key {
 type           = "string"
 description	  = "public aws key"
}
variable  key_tags  {
 type 		    = "map"
 description	= "tag from key pair"
}
#ec2 var
variable tag_ec2 {
 type 		    = "map"
 description 	= "tag from ec2 instance"
}
variable ec2_type {
 type          	= "string"
 description	  = "ec2 type instance"
}
variable associate_public_ip_address {
 type          	= "string"
 description  	= "enable or disable public ip address  true|false"
}
variable volume_size {
 type	      	= "string"
 description	= "volume_size"
}
variable volume_type {
 type		      = "string"
 description	= "type of volume |gp2|io|st1 "
}
variable volume_delete_on_termination {
 type		      = "string"
 description	= "delete on termination true|false "
}

variable "swap-gib" {
  type        = "string"
  description = "Swap size"
}
