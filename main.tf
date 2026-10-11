data "aws_ssm_patch_baseline" "ssm_patch_baseline_lookup" {
  for_each = var.ssm_patch_baseline_lookup

  owner            = each.value.owner
  default_baseline = each.value.default_baseline
  name_prefix      = each.value.name_prefix
  operating_system = each.value.operating_system
  region           = each.value.region
}

