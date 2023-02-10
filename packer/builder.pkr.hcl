packer {
  required_plugins {
    amazon = {
      version = ">= 1.1.1"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

build {
  sources = [
    "source.amazon-ebs.hkondrat-source"
  ]

  provisioner "ansible" {
    playbook_file   = "../ansible/playbook.yml"
    extra_arguments = ["--vault-password-file=${var.path_to_ans_vault}", "-e", "db_user=${var.db_user} db_name=${var.db_name}", "--tags", "${var.ans_tag}"]
  }
}
 