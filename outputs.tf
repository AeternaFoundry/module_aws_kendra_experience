output "kendra_experiences_id" {
  description = "Map of id values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kendra_experiences_arn" {
  description = "Map of arn values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "kendra_experiences_configuration" {
  description = "Map of configuration values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => one(v.configuration) if v.configuration != null && length(v.configuration) > 0 }
}
output "kendra_experiences_description" {
  description = "Map of description values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => v.description if v.description != null && length(v.description) > 0 }
}
output "kendra_experiences_endpoints" {
  description = "Map of endpoints values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => v.endpoints if v.endpoints != null && length(v.endpoints) > 0 }
}
output "kendra_experiences_experience_id" {
  description = "Map of experience_id values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => v.experience_id if v.experience_id != null && length(v.experience_id) > 0 }
}
output "kendra_experiences_index_id" {
  description = "Map of index_id values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => v.index_id if v.index_id != null && length(v.index_id) > 0 }
}
output "kendra_experiences_name" {
  description = "Map of name values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kendra_experiences_region" {
  description = "Map of region values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => v.region if v.region != null && length(v.region) > 0 }
}
output "kendra_experiences_role_arn" {
  description = "Map of role_arn values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "kendra_experiences_status" {
  description = "Map of status values across all kendra_experiences, keyed the same as var.kendra_experiences"
  value       = { for k, v in aws_kendra_experience.kendra_experiences : k => v.status if v.status != null && length(v.status) > 0 }
}

