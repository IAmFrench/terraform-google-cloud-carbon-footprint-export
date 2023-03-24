/* -------------------------------------------------------------------------- */
/*                    Google Cloud Carbon Footprint export                    */
/* -------------------------------------------------------------------------- */

resource "google_bigquery_dataset" "cloud_carbon_footprint_dataset" {
  dataset_id    = var.cloud_carbon_footprint_export_dataset_id
  friendly_name = "Cloud Carbon Footprint"
  description   = ""
  location      = var.cloud_carbon_footprint_dataset_location
  project       = var.cloud_carbon_footprint_project_id
}

resource "google_bigquery_data_transfer_config" "cloud_carbon_footprint_export" {
  display_name           = "Cloud Carbon Footprint"
  data_source_id         = "61cede5a-0000-2440-ad42-883d24f8f7b8"
  destination_dataset_id = google_bigquery_dataset.cloud_carbon_footprint_dataset.dataset_id
  params = {
    billing_accounts = var.billing_account_ids
  }
}
