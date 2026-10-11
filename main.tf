resource "oci_functions_application" "functions_applications" {
  for_each = var.functions_applications

  compartment_id             = each.value.compartment_id
  display_name               = each.value.display_name
  subnet_ids                 = each.value.subnet_ids
  config                     = each.value.config
  defined_tags               = each.value.defined_tags
  freeform_tags              = each.value.freeform_tags
  network_security_group_ids = each.value.network_security_group_ids
  security_attributes        = each.value.security_attributes
  shape                      = each.value.shape
  syslog_url                 = each.value.syslog_url

  dynamic "image_policy_config" {
    for_each = each.value.image_policy_config != null ? [each.value.image_policy_config] : []
    content {
      is_policy_enabled = image_policy_config.value.is_policy_enabled
      dynamic "key_details" {
        for_each = image_policy_config.value.key_details != null ? image_policy_config.value.key_details : []
        content {
          kms_key_id = key_details.value.kms_key_id
        }
      }
    }
  }

  dynamic "logging" {
    for_each = each.value.logging != null ? [each.value.logging] : []
    content {
      line_format = logging.value.line_format
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

  dynamic "trace_config" {
    for_each = each.value.trace_config != null ? [each.value.trace_config] : []
    content {
      domain_id  = trace_config.value.domain_id
      is_enabled = trace_config.value.is_enabled
    }
  }
}

