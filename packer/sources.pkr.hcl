locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}

source "amazon-ebs" "hkondrat-source" {
  ami_name = "${var.ami_name}-${var.ans_tag}-${local.timestamp}"
  source_ami_filter {
    filters = {
      name                = "${var.ami_source_name}"
      root-device-type    = "${var.root-device-type}"
      virtualization-type = "${var.virtualization-type}"
    }
    most_recent = true
    owners      = ["${var.owners}"]
  }
  instance_type = "${var.instance_type}"
  region        = "${var.region}"
  ssh_username  = "${var.ssh_username}"
}