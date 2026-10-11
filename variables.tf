variable "ssm_patch_baseline_lookup" {
  description = <<EOT
Map of ssm_patch_baseline_lookup, attributes below
Required:
    - owner
Optional:
    - default_baseline
    - name_prefix
    - operating_system
    - region
EOT

  type = map(object({
    owner            = string
    default_baseline = optional(bool)
    name_prefix      = optional(string)
    operating_system = optional(string)
    region           = optional(string)
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

