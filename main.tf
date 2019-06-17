provider "aws" {
  region     = "us-east-1"
}

module "webserver" {
  source        = "ptfe.ctp-devops-training.com/ctp-terraform-training/webserver/aws"
  ami           = "ami-0565af6e282977273"
  content       = "${file("index.html")}"
}
