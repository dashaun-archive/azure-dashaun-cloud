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