module "vpc" {
  source                = "../modules/vpc"
  cidrblock             = var.cidrblock
  tenancy               = "default"
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_cidr   = var.private_subnet_cidr
  public_az             = var.public_az
  private_az            = var.private_az
  endpoint_service_name = var.endpoint_service_name
}
module "s3" {
  source             = "../modules/s3"
  mybucket_name      = var.mybucket_name
  acl_type           = var.acl_type
  s3_bucket_quantity = var.bucket_list
}
module "sg" {
  source = "../modules/sg"
  vpc_id = module.vpc.vpc_id
}
module "ec2" {
  source                   = "../modules/ec2"
  ami_id                   = var.ami_id
  ec2_type                 = var.ec2_type
  private_az               = var.private_az
  public_az                = var.public_az
  private_subnet_id        = module.vpc.private_subnet_id
  public_subnet_id         = module.vpc.public_subnet_id
  key_pair_name            = var.key_pair_name
  public_quantity          = var.public_quantity
  private_quantity         = var.private_quantity
  public_security_group_id = module.sg.public_security_group_id
  depends_on = [
    module.sg
  ]
}
