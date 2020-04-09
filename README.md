# terraform-ec2-template for build ec2 instance

# Install the next software
```sh
$ Terraform v0.12.20 !<https://www.terraform.io>
$ Ansible 2.9.5 !<https://www.ansible.com>
```


- the home path for run terraform commands is in folder environments/enviroment_name/

- basic terraform commands:

```
terraform init     # install modules of terraform
terraform plan     # review the plan to execute
terraform apply    # build the infraestructure with terraform scripts
terraform destroy  # destroy the infraescture building for terraform scripts
```

- You need create the file in path "aws_key" in environments/environment_name/.aws/ with this structure...
```
[terraform-test]#profile
aws_access_key_id	= example #key_access_id
aws_secret_access_key	= example #key_pass_string

[terraform-admin]#profile2
aws_access_key_id	= example2 #key_access_id2
aws_secret_access_key	= example2 #key_pass_string2

```
- The vars file its enviroments/environment_name/terraform.tfvars

create ssh keygen: 

```
ssh-keygen -f lumston-pruebas -t RSA -C "arnoldo@lumston"; mv lumston-pruebas lumston-pruebas.pem -C "arnoldo@lumston.com"

```

The .pem file whould be moved in the folder "environments/{$eviroment_name}/.aws/"
