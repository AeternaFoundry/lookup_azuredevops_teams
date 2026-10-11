output "teams_lookup_id" {
  description = "Map of id values across all teams_lookup, keyed the same as var.teams_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_teams.teams_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "teams_lookup_project_id" {
  description = "Map of project_id values across all teams_lookup, keyed the same as var.teams_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.azuredevops_teams.teams_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "teams_lookup_teams" {
  description = "Map of teams values across all teams_lookup, keyed the same as var.teams_lookup except keys with no teams are omitted"
  value       = { for k, v in data.azuredevops_teams.teams_lookup : k => v.teams if v.teams != null && length(v.teams) > 0 }
}
output "teams_lookup_top" {
  description = "Map of top values across all teams_lookup, keyed the same as var.teams_lookup except keys with no top are omitted"
  value       = { for k, v in data.azuredevops_teams.teams_lookup : k => v.top if v.top != null }
}

