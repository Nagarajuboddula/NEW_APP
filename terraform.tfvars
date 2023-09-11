###############################
### Ans_frontend VARIABLES#########
##################################
Ans_frontend_ec2_ami = "ami-02b8534ff4b424939"
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
Ans_backend_ec2_ami = "ami-024e6efaf93d85776"
Ans_backend_ec2_instance_type = "t2.micro"
Ans_backend_key_name = "naga"
Ans_backend_instance_tags = {
    Name = "BE_u21.local"
    OsPlatform = "Ubuntu"
    Application = "Netdata"
}

