variable "billing_account_ids" {
  type        = string
  description = "billing account ID or a comma-separated list of billing account IDs."
  nullable    = false
}

variable "cloud_carbon_footprint_project_id" {
  type        = string
  description = "Project ID used for hosting BigQuery cloud carbon footprint datasets."
  nullable    = false
}

/* -------------------------------- Optionals ------------------------------- */

variable "cloud_carbon_footprint_export_dataset_id" {
  type        = string
  default     = "cloud_carbon_footprint_export"
  description = "Dataset ID used for the cloud carbon footprint export."
  nullable    = false
}

variable "cloud_carbon_footprint_dataset_location" {
  type        = string
  default     = "eu"
  description = "Location used for BigQuery CLoud Carbon Footprint datasets."
  nullable    = false
}
