variable "opsi_enterprise_manager_bridges" {
  description = <<EOT
Map of opsi_enterprise_manager_bridges, attributes below
Required:
    - compartment_id
    - display_name
    - object_storage_bucket_name
Optional:
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id             = string
    display_name               = string
    object_storage_bucket_name = string
    defined_tags               = optional(map(string))
    description                = optional(string)
    freeform_tags              = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

