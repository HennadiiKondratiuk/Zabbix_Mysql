variable "ami_name" {
  type    = string
  default = "Hkondratiuk"
}

variable "ami_source_name" {
  type    = string
  default = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
}

variable "root-device-type" {
  type    = string
  default = "ebs"
}

variable "virtualization-type" {
  type    = string
  default = "hvm"
}

variable "owners" {
  type    = string
  default = "099720109477"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "ssh_username" {
  type    = string
  default = "ubuntu"
}

variable "path_to_ans_vault" {
  type    = string
  default = "/home/hkondratiuk/Documents/onboarding_tasks/RSS-1068/pswd_file"
}

variable "ans_tag" {
  type    = string
  default = "zabbix"
}
