
# module "tfplan-functions" {
#   source = "./common-functions/tfplan-functions.sentinel"
# }

# module "tfstate-functions" {
#   source = "./common-functions/tfstate-functions.sentinel"
# }

# module "tfconfig-functions" {
#   source = "./common-functions/tfconfig-functions.sentinel"
# }



policy "ensure_s3_block_public_access" {
    source = "./policies/s3/s3_block_public_access.sentinel"
    enforcement_level = "advisory"
}

policy "ensure_s3_bucket_level_bpa" {
    source = "./policies/s3/s3_bucket_level_block_public_access.sentinel"
    enforcement_level = "advisory"
}

policy "ensure_s3_object_read_logging" {
    source = "./policies/s3/s3_object_read_logging.sentinel"
    enforcement_level = "advisory"
}

policy "ensure_s3_object_write_logging" {
    source = "./policies/s3/s3_object_write_logging.sentinel"
    enforcement_level = "advisory"
}

policy "ensure_s3_mfa_delete" {
    source = "./policies/s3/s3_mfa_delete.sentinel"
    enforcement_level = "advisory"
}

policy "ensure_s3_require_ssl" {
    source = "./policies/s3/s3_require_ssl.sentinel"
    enforcement_level = "advisory"
}

policy "enforce_rds_encryption_at_rest" {
  source = "./policies/rds/enforce_rds_encryption_at_rest.sentinel"
  enforcement_level = "advisory"
}

policy "enforce_rds_auto_minor_version_upgrade" {
  source = "./policies/rds/enforce_rds_auto_minor_version_upgrade.sentinel"
  enforcement_level = "advisory"
}

policy "enforce_rds_no_public_access" {
  source = "./policies/rds/enforce_rds_no_public_access.sentinel"
  enforcement_level = "advisory"
}

policy "enforce_cloudtrail_s3_logging" {
  source = "./policies/cloudtrail/enforce_cloudtrail_s3_logging.sentinel"
  enforcement_level = "advisory"
}

policy "enforce_cloudtrail_cloudwatch_logs" {
  source = "./policies/cloudtrail/enforce_cloudtrail_cloudwatch_logs.sentinel"
  enforcement_level = "advisory"
}

policy "enforce_cloudtrail_logfile_validation" {
  source = "./policies/cloudtrail/enforce_cloudtrail_logfile_validation.sentinel"
  enforcement_level = "advisory"
}

policy "enforce_cloudtrail_s3_not_public" {
  source = "./policies/cloudtrail/enforce_cloudtrail_s3_not_public.sentinel"
  enforcement_level = "advisory"
}

policy "enforce_cloudtrail_encryption" {
  source = "./policies/cloudtrail/enforce_cloudtrail_encryption.sentinel"
  enforcement_level = "advisory"
}

policy "kms-key-rotation-enabled" {
    source = "./kms-key-rotation-policy.sentinel"
    enforcement_level = "hard-mandatory"
}
