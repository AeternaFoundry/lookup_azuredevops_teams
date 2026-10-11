variable "teams_lookup" {
  description = <<EOT
Map of teams_lookup, attributes below
Optional:
    - project_id
    - top
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    project_id = optional(string)
    top        = optional(number)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.teams_lookup : (
        v.project_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.teams_lookup : (
        v.top == null || (v.top >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
}

