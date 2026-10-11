data "azuredevops_teams" "teams_lookup" {
  for_each = var.teams_lookup

  project_id = each.value.project_id
  top        = each.value.top

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

