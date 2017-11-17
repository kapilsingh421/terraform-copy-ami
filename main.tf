module "search" {
  source = "search"
  region = "us-east-1"
}

module "copy-to-us-east-2" {
  source   = "copy"
  region   = "us-east-2"
  copy_ami = "${module.search.my-source-ami}"
}

module "copy-to-us-west-1" {
  source   = "copy"
  region   = "us-west-1"
  copy_ami = "${module.search.my-source-ami}"
}

module "copy-to-us-west-2" {
  source   = "copy"
  region   = "us-west-2"
  copy_ami = "${module.search.my-source-ami}"
}
