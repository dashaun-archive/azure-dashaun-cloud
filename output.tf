output "resource_group" {
  value = module.cloud-pipeline-helm.resource_group
}

output "cluster_name" {
  value = module.cloud-pipeline-helm.cluster_name
}

output "redisgeek_config" {
  value     = module.cloud-pipeline-helm.redisgeek_config
  sensitive = true
}

output "a_aks_get_credentials" {
  value       = "az aks get-credentials --resource-group  ${module.cloud-pipeline-helm.resource_group} --name ${module.cloud-pipeline-helm.cluster_name}"
  description = "command to get kube config via az aks cli"
}