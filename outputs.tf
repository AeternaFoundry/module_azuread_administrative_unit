output "administrative_units_id" {
  description = "Map of id values across all administrative_units, keyed the same as var.administrative_units"
  value       = { for k, v in azuread_administrative_unit.administrative_units : k => v.id }
}
output "administrative_units_description" {
  description = "Map of description values across all administrative_units, keyed the same as var.administrative_units"
  value       = { for k, v in azuread_administrative_unit.administrative_units : k => v.description }
}
output "administrative_units_display_name" {
  description = "Map of display_name values across all administrative_units, keyed the same as var.administrative_units"
  value       = { for k, v in azuread_administrative_unit.administrative_units : k => v.display_name }
}
output "administrative_units_hidden_membership_enabled" {
  description = "Map of hidden_membership_enabled values across all administrative_units, keyed the same as var.administrative_units"
  value       = { for k, v in azuread_administrative_unit.administrative_units : k => v.hidden_membership_enabled }
}
output "administrative_units_members" {
  description = "Map of members values across all administrative_units, keyed the same as var.administrative_units"
  value       = { for k, v in azuread_administrative_unit.administrative_units : k => v.members }
}
output "administrative_units_object_id" {
  description = "Map of object_id values across all administrative_units, keyed the same as var.administrative_units"
  value       = { for k, v in azuread_administrative_unit.administrative_units : k => v.object_id }
}
output "administrative_units_prevent_duplicate_names" {
  description = "Map of prevent_duplicate_names values across all administrative_units, keyed the same as var.administrative_units"
  value       = { for k, v in azuread_administrative_unit.administrative_units : k => v.prevent_duplicate_names }
}

