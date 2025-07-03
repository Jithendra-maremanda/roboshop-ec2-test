variable "security_group_ids" {
  default = ["sg-006dd500fe2f98952"] # Replace with your security group ID
}
variable "ec2-tags" {
  default = {
    Name = "roboshop-cart"
  }
}
variable "instance_type" {
    default     = "t3.medium" # Example instance type, replace with your own
    description = "Instance type for the EC2 instance"
    type        = string

    validation {
      condition     = contains(["t3.micro","t3.small","t3.medium"], var.instance_type)
      error_message = "Instance type must be a valid AWS instance type."
    }
  }
