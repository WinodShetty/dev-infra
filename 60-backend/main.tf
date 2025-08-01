resource "aws_instance" "backend" {
    ami =
    vpc_security_group_ids =
    instance_type =
    subnet_id =
    tags = {

    }

}

resource "null_resource" "backend" {
    triggers = {

    }

    connections {

    }

    provisioner "remote-exec" {

    }

}

resource "aws_ec2_instance_state" "backend" {

}

resource "aws_ami_from instance" "backend" {
    
} 