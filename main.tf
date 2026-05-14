module "networking_aws" {
  source            = "./modules/networking-aws"
  project_name      = var.project_name
  my_public_ip_cidr = var.my_public_ip_cidr
}

module "compute_aws" {
  source         = "./modules/compute-aws"
  project_name   = var.project_name
  ssh_public_key = var.ssh_public_key
  subnet_id      = module.networking_aws.public_subnet_id
  sg_id          = module.networking_aws.sg_id
}
