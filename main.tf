resource "oci_opsi_enterprise_manager_bridge" "opsi_enterprise_manager_bridges" {
  for_each = var.opsi_enterprise_manager_bridges

  compartment_id             = each.value.compartment_id
  display_name               = each.value.display_name
  object_storage_bucket_name = each.value.object_storage_bucket_name
  defined_tags               = each.value.defined_tags
  description                = each.value.description
  freeform_tags              = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

