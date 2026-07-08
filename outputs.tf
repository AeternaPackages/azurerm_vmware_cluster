# --- azurerm_vmware_cluster ---
output "vmware_clusters" {
  description = "All vmware_cluster resources"
  value       = module.vmware_clusters.vmware_clusters
}
output "vmware_clusters_cluster_node_count" {
  description = "List of cluster_node_count values across all vmware_clusters"
  value       = [for k, v in module.vmware_clusters.vmware_clusters : v.cluster_node_count]
}
output "vmware_clusters_cluster_number" {
  description = "List of cluster_number values across all vmware_clusters"
  value       = [for k, v in module.vmware_clusters.vmware_clusters : v.cluster_number]
}
output "vmware_clusters_hosts" {
  description = "List of hosts values across all vmware_clusters"
  value       = [for k, v in module.vmware_clusters.vmware_clusters : v.hosts]
}
output "vmware_clusters_name" {
  description = "List of name values across all vmware_clusters"
  value       = [for k, v in module.vmware_clusters.vmware_clusters : v.name]
}
output "vmware_clusters_sku_name" {
  description = "List of sku_name values across all vmware_clusters"
  value       = [for k, v in module.vmware_clusters.vmware_clusters : v.sku_name]
}
output "vmware_clusters_vmware_cloud_id" {
  description = "List of vmware_cloud_id values across all vmware_clusters"
  value       = [for k, v in module.vmware_clusters.vmware_clusters : v.vmware_cloud_id]
}


# --- azurerm_vmware_netapp_volume_attachment ---
output "vmware_netapp_volume_attachments" {
  description = "All vmware_netapp_volume_attachment resources"
  value       = module.vmware_netapp_volume_attachments.vmware_netapp_volume_attachments
}
output "vmware_netapp_volume_attachments_name" {
  description = "List of name values across all vmware_netapp_volume_attachments"
  value       = [for k, v in module.vmware_netapp_volume_attachments.vmware_netapp_volume_attachments : v.name]
}
output "vmware_netapp_volume_attachments_netapp_volume_id" {
  description = "List of netapp_volume_id values across all vmware_netapp_volume_attachments"
  value       = [for k, v in module.vmware_netapp_volume_attachments.vmware_netapp_volume_attachments : v.netapp_volume_id]
}
output "vmware_netapp_volume_attachments_vmware_cluster_id" {
  description = "List of vmware_cluster_id values across all vmware_netapp_volume_attachments"
  value       = [for k, v in module.vmware_netapp_volume_attachments.vmware_netapp_volume_attachments : v.vmware_cluster_id]
}



