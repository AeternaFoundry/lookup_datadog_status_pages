variable "status_pages_lookup" {
  description = <<EOT
Map of status_pages_lookup, attributes below
Optional:
    - name
EOT

  type = map(object({
    name = optional(string)
  }))
}

