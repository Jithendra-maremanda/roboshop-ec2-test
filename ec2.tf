module "ec2" {
    source = "../terraform-aws-instance"
    sg_ids = var.security_group_ids
    instance_type = var.instance_type # Example instance type, replace with your own
    tags = var.ec2-tags
}
