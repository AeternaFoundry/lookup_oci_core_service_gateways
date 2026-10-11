variable "core_service_gateways_lookup" {
  description = <<EOT
Map of core_service_gateways_lookup, attributes below
Required:
    - compartment_id
Optional:
    - state
    - vcn_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    state          = optional(string)
    vcn_id         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

