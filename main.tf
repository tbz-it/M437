module "lerncloud" {
  #source     = "git::https://github.com/mc-b/terraform-lerncloud-maas"
  source     = "git::https://github.com/mc-b/terraform-lerncloud-multipass"
  #source     = "git::https://github.com/mc-b/terraform-lerncloud-aws"
  #source     = "git::https://github.com/mc-b/terraform-lerncloud-azure"
  
  module      = "m437"
  description = "M437 Im Support arbeiten"
  userdata    = "cloud-init.yaml"
    
  memory      = 4
  cores       = 2
}
