output "teams_lookup_id" {
  description = "Map of id values across all teams_lookup, keyed the same as var.teams_lookup"
  value       = { for k, v in data.azuredevops_teams.teams_lookup : k => v.id }
}
output "teams_lookup_project_id" {
  description = "Map of project_id values across all teams_lookup, keyed the same as var.teams_lookup"
  value       = { for k, v in data.azuredevops_teams.teams_lookup : k => v.project_id }
}
output "teams_lookup_teams" {
  description = "Map of teams values across all teams_lookup, keyed the same as var.teams_lookup"
  value       = { for k, v in data.azuredevops_teams.teams_lookup : k => v.teams }
}
output "teams_lookup_top" {
  description = "Map of top values across all teams_lookup, keyed the same as var.teams_lookup"
  value       = { for k, v in data.azuredevops_teams.teams_lookup : k => v.top }
}

