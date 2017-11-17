variable "copy_ami" {}

resource "aws_ami_copy" "deploy" {
  name              = "terraform-example"
  description       = "A copy of ${var.copy_ami}"
  source_ami_id     = "${var.copy_ami}"
  source_ami_region = "us-east-1"

  tags {
    Name = "HelloWorld 2"
  }
}
