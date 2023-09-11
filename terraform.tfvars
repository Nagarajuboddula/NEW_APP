###############################
### Ans_frontend VARIABLES#########
##################################
Ans_frontend_ec2_ami = "ami-026ebd4cfe2c043b2"
Ans_frontend_ec2_instance_type = "t2.micro"
Ans_frontend_key_name = "naga"
Ans_frontend_instance_tags = {
    Name = "FE_c8.local"
    OsPlatform = "RHEL"
    Application = "NGINX"
}



###############################
### Ans_backend VARIABLES#########
##################################
Ans_backend_ec2_ami = "ami-053b0d53c279acc90"
Ans_backend_ec2_instance_type = "t2.micro"
Ans_backend_key_name = "naga"
Ans_backend_instance_tags = {
    Name = "BE_u21.local"
    OsPlatform = "Ubuntu"
    Application = "Netdata"
}

