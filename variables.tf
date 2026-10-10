variable "kendra_experiences" {
  description = <<EOT
Map of kendra_experiences, attributes below
Required:
    - index_id
    - name
    - role_arn
Optional:
    - description
    - region
    - configuration (block):
        - content_source_configuration (optional, block):
            - data_source_ids (optional)
            - direct_put_content (optional)
            - faq_ids (optional)
        - user_identity_configuration (optional, block):
            - identity_attribute_name (required)
EOT

  type = map(object({
    index_id    = string
    name        = string
    role_arn    = string
    description = optional(string)
    region      = optional(string)
    configuration = optional(object({
      content_source_configuration = optional(object({
        data_source_ids    = optional(set(string))
        direct_put_content = optional(bool)
        faq_ids            = optional(set(string))
      }))
      user_identity_configuration = optional(object({
        identity_attribute_name = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.kendra_experiences : (
        can(regex("[0-9A-Za-z][0-9A-Za-z-]*", v.index_id))
      )
    ])
    error_message = ""
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

