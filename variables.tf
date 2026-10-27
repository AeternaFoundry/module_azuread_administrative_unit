variable "administrative_units" {
  description = <<EOT
Map of administrative_units, attributes below
Required:
    - display_name
Optional:
    - description
    - hidden_membership_enabled
    - members
    - prevent_duplicate_names
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    display_name              = string
    description               = optional(string)
    hidden_membership_enabled = optional(bool)
    members                   = optional(set(string))
    prevent_duplicate_names   = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.administrative_units : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.administrative_units : (
        v.members == null || (alltrue([for x in v.members : can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", x))]))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

