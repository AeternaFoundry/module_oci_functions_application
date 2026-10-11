variable "functions_applications" {
  description = <<EOT
Map of functions_applications, attributes below
Required:
    - compartment_id
    - display_name
    - subnet_ids
Optional:
    - config
    - defined_tags
    - freeform_tags
    - network_security_group_ids
    - security_attributes
    - shape
    - syslog_url
    - image_policy_config (block):
        - is_policy_enabled (required)
        - key_details (optional, block):
            - kms_key_id (required)
    - logging (block):
        - line_format (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - trace_config (block):
        - domain_id (optional)
        - is_enabled (optional)
EOT

  type = map(object({
    compartment_id             = string
    display_name               = string
    subnet_ids                 = list(string)
    config                     = optional(map(string))
    defined_tags               = optional(map(string))
    freeform_tags              = optional(map(string))
    network_security_group_ids = optional(set(string))
    security_attributes        = optional(map(string))
    shape                      = optional(string)
    syslog_url                 = optional(string)
    image_policy_config = optional(object({
      is_policy_enabled = bool
      key_details = optional(list(object({
        kms_key_id = string
      })))
    }))
    logging = optional(object({
      line_format = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    trace_config = optional(object({
      domain_id  = optional(string)
      is_enabled = optional(bool)
    }))
  }))
}

