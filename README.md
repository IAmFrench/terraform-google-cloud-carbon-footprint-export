# Cloud Carbon Footprint export module for GCP

This module for GCP will create both BigQuery dataset and data Transfert for your Cloud Carbon Footprint export.

Please note that the transfer config does not automatically export historical data. To request historical data back to January 2021, schedule a data backfill.

Learn more: https://cloud.google.com/carbon-footprint/docs/export

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.58.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_bigquery_data_transfer_config.cloud_carbon_footprint_export](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_data_transfer_config) | resource |
| [google_bigquery_dataset.cloud_carbon_footprint_dataset](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account_ids"></a> [billing\_account\_ids](#input\_billing\_account\_ids) | billing account ID or a comma-separated list of billing account IDs. | `string` | n/a | yes |
| <a name="input_cloud_carbon_footprint_dataset_location"></a> [cloud\_carbon\_footprint\_dataset\_location](#input\_cloud\_carbon\_footprint\_dataset\_location) | Location used for BigQuery CLoud Carbon Footprint datasets. | `string` | `"eu"` | no |
| <a name="input_cloud_carbon_footprint_export_dataset_id"></a> [cloud\_carbon\_footprint\_export\_dataset\_id](#input\_cloud\_carbon\_footprint\_export\_dataset\_id) | Dataset ID used for the cloud carbon footprint export. | `string` | `"cloud_carbon_footprint_export"` | no |
| <a name="input_cloud_carbon_footprint_project_id"></a> [cloud\_carbon\_footprint\_project\_id](#input\_cloud\_carbon\_footprint\_project\_id) | Project ID used for hosting BigQuery cloud carbon footprint datasets. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
