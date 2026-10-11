output "functions_applications_id" {
  description = "Map of id values across all functions_applications, keyed the same as var.functions_applications except keys with no id are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "functions_applications_compartment_id" {
  description = "Map of compartment_id values across all functions_applications, keyed the same as var.functions_applications except keys with no compartment_id are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "functions_applications_config" {
  description = "Map of config values across all functions_applications, keyed the same as var.functions_applications except keys with no config are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.config if v.config != null && length(v.config) > 0 }
}
output "functions_applications_defined_tags" {
  description = "Map of defined_tags values across all functions_applications, keyed the same as var.functions_applications except keys with no defined_tags are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "functions_applications_display_name" {
  description = "Map of display_name values across all functions_applications, keyed the same as var.functions_applications except keys with no display_name are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "functions_applications_freeform_tags" {
  description = "Map of freeform_tags values across all functions_applications, keyed the same as var.functions_applications except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "functions_applications_image_policy_config" {
  description = "Map of image_policy_config values across all functions_applications, keyed the same as var.functions_applications except keys with no image_policy_config are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => one(v.image_policy_config) if v.image_policy_config != null && length(v.image_policy_config) > 0 }
}
output "functions_applications_logging" {
  description = "Map of logging values across all functions_applications, keyed the same as var.functions_applications except keys with no logging are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => one(v.logging) if v.logging != null && length(v.logging) > 0 }
}
output "functions_applications_network_security_group_ids" {
  description = "Map of network_security_group_ids values across all functions_applications, keyed the same as var.functions_applications except keys with no network_security_group_ids are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.network_security_group_ids if v.network_security_group_ids != null && length(v.network_security_group_ids) > 0 }
}
output "functions_applications_security_attributes" {
  description = "Map of security_attributes values across all functions_applications, keyed the same as var.functions_applications except keys with no security_attributes are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "functions_applications_shape" {
  description = "Map of shape values across all functions_applications, keyed the same as var.functions_applications except keys with no shape are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.shape if v.shape != null && length(v.shape) > 0 }
}
output "functions_applications_state" {
  description = "Map of state values across all functions_applications, keyed the same as var.functions_applications except keys with no state are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.state if v.state != null && length(v.state) > 0 }
}
output "functions_applications_subnet_ids" {
  description = "Map of subnet_ids values across all functions_applications, keyed the same as var.functions_applications except keys with no subnet_ids are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.subnet_ids if v.subnet_ids != null && length(v.subnet_ids) > 0 }
}
output "functions_applications_syslog_url" {
  description = "Map of syslog_url values across all functions_applications, keyed the same as var.functions_applications except keys with no syslog_url are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.syslog_url if v.syslog_url != null && length(v.syslog_url) > 0 }
}
output "functions_applications_time_created" {
  description = "Map of time_created values across all functions_applications, keyed the same as var.functions_applications except keys with no time_created are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "functions_applications_time_updated" {
  description = "Map of time_updated values across all functions_applications, keyed the same as var.functions_applications except keys with no time_updated are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "functions_applications_trace_config" {
  description = "Map of trace_config values across all functions_applications, keyed the same as var.functions_applications except keys with no trace_config are omitted"
  value       = { for k, v in oci_functions_application.functions_applications : k => one(v.trace_config) if v.trace_config != null && length(v.trace_config) > 0 }
}

