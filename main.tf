resource "google_chronicle_parser" "chronicle_parsers" {
  for_each = var.chronicle_parsers

  instance                = each.value.instance
  location                = each.value.location
  logtype                 = each.value.logtype
  cbn                     = each.value.cbn
  deletion_policy         = each.value.deletion_policy
  project                 = each.value.project
  validated_on_empty_logs = each.value.validated_on_empty_logs
  validation_skipped      = each.value.validation_skipped

  dynamic "low_code" {
    for_each = each.value.low_code != null ? [each.value.low_code] : []
    content {
      dynamic "field_extractors" {
        for_each = low_code.value.field_extractors != null ? [low_code.value.field_extractors] : []
        content {
          append_repeated_fields = field_extractors.value.append_repeated_fields
          dynamic "extractors" {
            for_each = field_extractors.value.extractors != null ? field_extractors.value.extractors : []
            content {
              destination_path   = extractors.value.destination_path
              field_path         = extractors.value.field_path
              precondition_op    = extractors.value.precondition_op
              precondition_path  = extractors.value.precondition_path
              precondition_value = extractors.value.precondition_value
              value              = extractors.value.value
            }
          }
          log_format = field_extractors.value.log_format
          dynamic "preprocess_config" {
            for_each = field_extractors.value.preprocess_config != null ? [field_extractors.value.preprocess_config] : []
            content {
              grok_regex = preprocess_config.value.grok_regex
              target     = preprocess_config.value.target
            }
          }
        }
      }
      log = low_code.value.log
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "version_info" {
    for_each = each.value.version_info != null ? [each.value.version_info] : []
    content {
      auto_upgrade_disabled = version_info.value.auto_upgrade_disabled
    }
  }
}

