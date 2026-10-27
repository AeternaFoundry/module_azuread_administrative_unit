resource "azuread_administrative_unit" "administrative_units" {
  for_each = var.administrative_units

  display_name              = each.value.display_name
  description               = each.value.description
  hidden_membership_enabled = each.value.hidden_membership_enabled
  members                   = each.value.members
  prevent_duplicate_names   = each.value.prevent_duplicate_names

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

