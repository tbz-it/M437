module "lerncloud" {
  source     = "git::https://github.com/mc-b/terraform_lerncloud_multipass"      
  #source     = "git::https://github.com/mc-b/terraform_lerncloud_aws"
  #source     = "git::https://github.com/mc-b/terraform_lerncloud_azure"
  #source     = "git::https://github.com/mc-b/terraform_lerncloud_maas"
  module     = "m437"
  userdata   = "cloud-init.yaml"
  mem        = "4GB"
}
