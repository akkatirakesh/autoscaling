resource "aws_autoscaling_group" "myasg" {
  name = var.name
  max_size = var.max_size
  min_size = var.min_size
  health_check_grace_period = var.health_check_grace_period
  health_check_type = var.health_check_type
  desired_capacity = var.desire_capacity
  launch_configuration = var.lc
  vpc_zone_identifier = [var.subnet1, var.subnet2]
}

variable "lc" {
  description = "enter the launch_configuration"
}

variable "subnet1" {
  description = "enter the subnet1 id"
}

variable "subnet2" {
  description = "enter the subnet2 id"
}

variable "name" {
  description = "enter the name of the auto scaling group"
}

variable "max_size" {
  description = "enter the maximum size"
}

variable "min_size" {
  description = "enter the minimum size"
}

variable "health_check_grace_period" {
  description = "enter the grace period of health check"
}

variable "health_check_type" {
  description = "enter the health check type"
}

variable "desire_capacity" {
  description = "enter the desired capacity"
}