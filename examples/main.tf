module "launch_configuration" {
  source = "git::https://github.com/akkatirakesh/launch_configuration.git"
  ami ="ami-00514a528eadbc95b"
  type_of_instance = "t2.micro"
  sg="sg-5839f801"
  iam_role = "ssmrole"
}
module "asg" {
  source = "../"
  name = var.name
  max_size = var.max_size
  min_size = var.min_size
  health_check_grace_period = var.health_check_grace_period
  health_check_type = var.health_check_type
  desire_capacity = var.desire_capacity
  lc = module.launch_configuration.id
  subnet1=var.subnet1
  subnet2 = var.subnet2
}

provider "aws" {
  access_key="AKIAQAKEBHAJHA7JCNUV"
  secret_key="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"
  region = "us-east-1"
}

variable "subnet1" {
  default = "subnet-0a70fa34"
}

variable "subnet2" {
  default = "subnet-337b386f"
}

variable "name" {
  default = "MYASG"
  description = "enter the name of the auto scaling group"
}

variable "max_size" {
  default = "2"
  description = "enter the maximum size"
}

variable "min_size" {
  default = "1"
  description = "enter the minimum size"
}

variable "health_check_grace_period" {
  default = "300"
  description = "enter the grace period of health check"
}

variable "health_check_type" {
  default = "ELB"
  description = "enter the health check type"
}

variable "desire_capacity" {
  default = "2"
  description = "enter the desired capacity"
}

