variable "vmware_clusters" {
  description = <<EOT
Map of vmware_clusters, attributes below
Required:
    - cluster_node_count
    - name
    - sku_name
    - vmware_cloud_id
Nested vmware_netapp_volume_attachments (azurerm_vmware_netapp_volume_attachment):
    Required:
        - name
        - netapp_volume_id
EOT

  type = map(object({
    cluster_node_count = number
    name               = string
    sku_name           = string
    vmware_cloud_id    = string
    vmware_netapp_volume_attachments = optional(map(object({
      name             = string
      netapp_volume_id = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.vmware_clusters) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.vmware_clusters : [for kk in keys(coalesce(v0.vmware_netapp_volume_attachments, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
