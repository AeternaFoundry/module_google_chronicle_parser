variable "chronicle_parsers" {
  description = <<EOT
Map of chronicle_parsers, attributes below
Required:
    - instance
    - location
    - logtype
Optional:
    - cbn
    - deletion_policy
    - project
    - validated_on_empty_logs
    - validation_skipped
    - low_code (block):
        - field_extractors (optional, block):
            - append_repeated_fields (optional)
            - extractors (optional, block):
                - destination_path (optional)
                - field_path (optional)
                - precondition_op (optional)
                - precondition_path (optional)
                - precondition_value (optional)
                - value (optional)
            - log_format (optional)
            - preprocess_config (optional, block):
                - grok_regex (optional)
                - target (optional)
        - log (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - version_info (block):
        - auto_upgrade_disabled (required)
EOT

  type = map(object({
    instance                = string
    location                = string
    logtype                 = string
    cbn                     = optional(string)
    deletion_policy         = optional(string)
    project                 = optional(string)
    validated_on_empty_logs = optional(bool)
    validation_skipped      = optional(bool)
    low_code = optional(object({
      field_extractors = optional(object({
        append_repeated_fields = optional(bool)
        extractors = optional(list(object({
          destination_path   = optional(string)
          field_path         = optional(string)
          precondition_op    = optional(string)
          precondition_path  = optional(string)
          precondition_value = optional(string)
          value              = optional(string)
        })))
        log_format = optional(string)
        preprocess_config = optional(object({
          grok_regex = optional(string)
          target     = optional(string)
        }))
      }))
      log = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    version_info = optional(object({
      auto_upgrade_disabled = bool
    }))
  }))
}

