provider "google"{
 region = "us.west"
}
module "compute" {
  source = "./modules/compute"
}

module "db" {
  source = "./modules/db"
}
