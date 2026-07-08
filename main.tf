locals {
  vmware_clusters = { for k1, v1 in var.vmware_clusters : k1 => { cluster_node_count = v1.cluster_node_count, name = v1.name, sku_name = v1.sku_name, vmware_cloud_id = v1.vmware_cloud_id } }

  vmware_netapp_volume_attachments = merge([
    for k1, v1 in var.vmware_clusters : {
      for k2, v2 in coalesce(v1.vmware_netapp_volume_attachments, {}) :
      "${k1}/${k2}" => merge(v2, {
        vmware_cluster_id = module.vmware_clusters.vmware_clusters["${k1}"].id
      })
    }
  ]...)
}

module "vmware_clusters" {
  source          = "git::https://github.com/AeternaModules/azurerm_vmware_cluster.git?ref=v4.80.0"
  vmware_clusters = local.vmware_clusters
}

module "vmware_netapp_volume_attachments" {
  source                           = "git::https://github.com/AeternaModules/azurerm_vmware_netapp_volume_attachment.git?ref=v4.80.0"
  vmware_netapp_volume_attachments = local.vmware_netapp_volume_attachments
  depends_on                       = [module.vmware_clusters]
}

