module "aft" {
  source  = "aws-ia/control_tower_account_factory/aws"
  version = "1.10.4"

  # Required Parameters
  ct_management_account_id    = "XXXXXXXXXXXX"
  log_archive_account_id      = "XXXXXXXXXXXX"
  audit_account_id            = "XXXXXXXXXXXX"
  aft_management_account_id   = "XXXXXXXXXXXX"
  ct_home_region              = "us-east-1"
  tf_backend_secondary_region = "us-east-2"

  # Optional Parameters
  terraform_distribution = "oss"
  vcs_provider           = "codecommit"

  # Optional Feature Flags
  aft_feature_delete_default_vpcs_enabled = true
  aft_vpc_endpoints                       = true
  aft_feature_cloudtrail_data_events      = true
  aft_feature_enterprise_support          = false
}
