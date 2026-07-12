# --- azurerm_vmware_cluster ---
output "vmware_clusters_cluster_node_count" {
  description = "Map of cluster_node_count values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = module.vmware_clusters.vmware_clusters_cluster_node_count
}

output "vmware_clusters_cluster_number" {
  description = "Map of cluster_number values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = module.vmware_clusters.vmware_clusters_cluster_number
}

output "vmware_clusters_hosts" {
  description = "Map of hosts values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = module.vmware_clusters.vmware_clusters_hosts
}

output "vmware_clusters_name" {
  description = "Map of name values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = module.vmware_clusters.vmware_clusters_name
}

output "vmware_clusters_sku_name" {
  description = "Map of sku_name values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = module.vmware_clusters.vmware_clusters_sku_name
}

output "vmware_clusters_vmware_cloud_id" {
  description = "Map of vmware_cloud_id values across all vmware_clusters, keyed the same as var.vmware_clusters"
  value       = module.vmware_clusters.vmware_clusters_vmware_cloud_id
}

# --- azurerm_vmware_netapp_volume_attachment ---
output "vmware_netapp_volume_attachments_name" {
  description = "Map of name values across all vmware_netapp_volume_attachments, keyed the same as var.vmware_netapp_volume_attachments"
  value       = module.vmware_netapp_volume_attachments.vmware_netapp_volume_attachments_name
}

output "vmware_netapp_volume_attachments_netapp_volume_id" {
  description = "Map of netapp_volume_id values across all vmware_netapp_volume_attachments, keyed the same as var.vmware_netapp_volume_attachments"
  value       = module.vmware_netapp_volume_attachments.vmware_netapp_volume_attachments_netapp_volume_id
}

output "vmware_netapp_volume_attachments_vmware_cluster_id" {
  description = "Map of vmware_cluster_id values across all vmware_netapp_volume_attachments, keyed the same as var.vmware_netapp_volume_attachments"
  value       = module.vmware_netapp_volume_attachments.vmware_netapp_volume_attachments_vmware_cluster_id
}


