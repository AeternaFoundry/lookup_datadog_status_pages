output "status_pages_lookup_id" {
  description = "Map of id values across all status_pages_lookup, keyed the same as var.status_pages_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_status_pages.status_pages_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "status_pages_lookup_name" {
  description = "Map of name values across all status_pages_lookup, keyed the same as var.status_pages_lookup except keys with no name are omitted"
  value       = { for k, v in data.datadog_status_pages.status_pages_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "status_pages_lookup_status_pages" {
  description = "Map of status_pages values across all status_pages_lookup, keyed the same as var.status_pages_lookup except keys with no status_pages are omitted"
  value       = { for k, v in data.datadog_status_pages.status_pages_lookup : k => v.status_pages if v.status_pages != null && length(v.status_pages) > 0 }
}

