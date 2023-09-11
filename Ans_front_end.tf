
resource "aws_instance" "Ans_frontend_ec2_instance" {
    ami = var.Ans_frontend_ec2_ami
    instance_type = var.Ans_frontend_ec2_instance_type
    key_name= var.Ans_frontend_key_name
    tags = var.Ans_frontend_instance_tags
    vpc_security_group_ids = [aws_security_group.sec-grp.id]
    #sg_description = var.Ans_frontend_sg_description
    #sg_ingress_with_cidr_blocks = var.Ans_frontend_sg_ingress_with_cidr_blocks
    #sg_egress_with_cidr_blocks = var.Ans_frontend_sg_egress_with_cidr_blocks
  user_data = <<-EOF
      #!/bin/sh
      hostnamectl set-hostname c8.local
      EOF
} 
















## file inventory.tf

data "template_file" "ansible_inventory" {
  template = "${file("${path.module}/hosts.tmpl")}"

  vars = {
    public_ips = "${join("\n", aws_instance.Ans_frontend_ec2_instance.*.public_ip)}"
  }
}

resource "local_file" "hosts" {
  filename = "${path.module}/hosts"

  content = data.template_file.ansible_inventory.rendered
}

