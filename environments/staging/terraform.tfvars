#proveedor var
region			= "us-east-2"
shared_credentials_file = ".aws/aws_key"
profile		 	= "aws-dev"

#network var
availability_zone	= "us-east-2b"

#securityGroup var
app_port 	 = 80
cidr_access	 = "187.189.190.59/32"
vpc_id	     = "{module.network.vpc_id}"
name-sg      = "lumston app"

sgtags = {
 Name	     = "Prueba"
 client	     = "desarrollo"
 project     = "lumton"
 environment = "dev"
}

#key_pair
key_name		    = "tindalos"
public_key 		    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC6qHAC48W4E/YwiYS7r50fnyI6mLaogat1b4MrjCRIA9OGPoID8yvJB3AH5TLneSjex8NmMafaxfDjLbjiUeNbyC4wWjNrFoEGiz3gI102X0+HqGJASAMsfFVAYwhlUp/qo5UtHVEYT7lHrUMDuK8/ELMrDG9zGGHIGGsuQcpoy6hwgG1X5z6xXGE5/hisQkZDEJH4gAkhnPLWYTvgjrmL0WR140kOvbwiRptNJzfaIPWcw62cEkIRugS0/TjOSkFb/BBUVvm4/c45rRcRGJNz/K70uCW4XGubz3N5YD8f3h7q4v81N0h3fOoB6YC+eUqnMbxfqMvT/o9xsfacazgt6tvgp+GNRFjx150eOqv2VBy1hs/6O6hfrzDe8uqw4acp3OHJ6GCCWoOg/OTU15j38D0rT8zUrPPZsBJ3juhbAYnmrnYw761EAiBRwv8AfaFtd7ToNvyyCdYKxKqHHFMNP+u0pjpV2i6LBRxlpQg6oO+Y52bqtYBY65213vc+RPk= nol@localhost.localdomain"

key_tags = {
 client		    = "client"
 project	    = "projet"
 environment	= "test"
}

#ec2 var
tag_ec2 = {
 Name 	     = "Prueba"
 client      = "lumston"
 project     = "lumston"
 environment = "dev"
}

ec2_type			            = "t3.micro"
associate_public_ip_address 	= "true"
volume_size			            = "8"
swap-gib                        = "4"
volume_type			            = "gp2"
volume_delete_on_termination	= "true"
