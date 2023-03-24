provider "google" {
  project = local.cloud_carbon_footprint_project_id
  region  = local.region
  zone    = local.zone
}

locals {
  cloud_carbon_footprint_project_id       = "billing-prd"
  cloud_carbon_footprint_dataset_location = "eu"
  region                                  = "europe-west3"
  zone                                    = "europe-west3-a"
}

/* -------------------------------------------------------------------------- */
/*                        Cloud Carbon Footprint export                       */
/* -------------------------------------------------------------------------- */

module "google_cloud_carbon_footprint_export" {
  source                                  = "../../"
  billing_account_ids                     = var.billing_account_ids
  cloud_carbon_footprint_dataset_location = local.cloud_carbon_footprint_dataset_location
  cloud_carbon_footprint_project_id       = local.cloud_carbon_footprint_project_id
}
