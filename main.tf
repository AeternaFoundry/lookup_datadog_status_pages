data "datadog_status_pages" "status_pages_lookup" {
  for_each = var.status_pages_lookup

  name = each.value.name
}

