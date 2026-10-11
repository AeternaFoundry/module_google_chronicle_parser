output "chronicle_parsers_id" {
  description = "Map of id values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no id are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chronicle_parsers_cbn" {
  description = "Map of cbn values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no cbn are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.cbn if v.cbn != null && length(v.cbn) > 0 }
}
output "chronicle_parsers_changelogs" {
  description = "Map of changelogs values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no changelogs are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.changelogs if v.changelogs != null && length(v.changelogs) > 0 }
}
output "chronicle_parsers_create_time" {
  description = "Map of create_time values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no create_time are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "chronicle_parsers_creator" {
  description = "Map of creator values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no creator are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.creator if v.creator != null && length(v.creator) > 0 }
}
output "chronicle_parsers_deletion_policy" {
  description = "Map of deletion_policy values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no deletion_policy are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "chronicle_parsers_dynamic_parsing_config" {
  description = "Map of dynamic_parsing_config values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no dynamic_parsing_config are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.dynamic_parsing_config if v.dynamic_parsing_config != null && length(v.dynamic_parsing_config) > 0 }
}
output "chronicle_parsers_instance" {
  description = "Map of instance values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no instance are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "chronicle_parsers_location" {
  description = "Map of location values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no location are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.location if v.location != null && length(v.location) > 0 }
}
output "chronicle_parsers_logtype" {
  description = "Map of logtype values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no logtype are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.logtype if v.logtype != null && length(v.logtype) > 0 }
}
output "chronicle_parsers_low_code" {
  description = "Map of low_code values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no low_code are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => one(v.low_code) if v.low_code != null && length(v.low_code) > 0 }
}
output "chronicle_parsers_name" {
  description = "Map of name values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no name are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "chronicle_parsers_parser" {
  description = "Map of parser values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no parser are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.parser if v.parser != null && length(v.parser) > 0 }
}
output "chronicle_parsers_parser_extension" {
  description = "Map of parser_extension values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no parser_extension are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.parser_extension if v.parser_extension != null && length(v.parser_extension) > 0 }
}
output "chronicle_parsers_project" {
  description = "Map of project values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no project are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.project if v.project != null && length(v.project) > 0 }
}
output "chronicle_parsers_release_stage" {
  description = "Map of release_stage values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no release_stage are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.release_stage if v.release_stage != null && length(v.release_stage) > 0 }
}
output "chronicle_parsers_state" {
  description = "Map of state values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no state are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.state if v.state != null && length(v.state) > 0 }
}
output "chronicle_parsers_type" {
  description = "Map of type values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no type are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.type if v.type != null && length(v.type) > 0 }
}
output "chronicle_parsers_validated_on_empty_logs" {
  description = "Map of validated_on_empty_logs values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no validated_on_empty_logs are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.validated_on_empty_logs if v.validated_on_empty_logs != null }
}
output "chronicle_parsers_validation_report" {
  description = "Map of validation_report values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no validation_report are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.validation_report if v.validation_report != null && length(v.validation_report) > 0 }
}
output "chronicle_parsers_validation_skipped" {
  description = "Map of validation_skipped values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no validation_skipped are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.validation_skipped if v.validation_skipped != null }
}
output "chronicle_parsers_validation_stage" {
  description = "Map of validation_stage values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no validation_stage are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => v.validation_stage if v.validation_stage != null && length(v.validation_stage) > 0 }
}
output "chronicle_parsers_version_info" {
  description = "Map of version_info values across all chronicle_parsers, keyed the same as var.chronicle_parsers except keys with no version_info are omitted"
  value       = { for k, v in google_chronicle_parser.chronicle_parsers : k => one(v.version_info) if v.version_info != null && length(v.version_info) > 0 }
}

