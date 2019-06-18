provider "aws" {
  region     = "us-east-1"
}

module "webserver" {
  source            = "ptfe.ctp-devops-training.com/ctp-terraform-training/webserver/aws"
  version           = "1.0.1"
  ami               = "ami-0565af6e282977273"

  filecontent       = "${file("index.html")}"
  env_version       = "Blue"

  lab_username      = "${var.lab_username}"
  instance_type     = "t2.small"
}
