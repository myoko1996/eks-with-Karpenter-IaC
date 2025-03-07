
# This file defines the outputs for the EKS with Karpenter setup.
output "cluster_name" {
  description = "The name of the EKS Cluster"
  value       = module.eks.cluster_name
}

output "karpenter_node_iam_role" {
  description = "The IAM Role for Karpenter Node"
  value       = module.karpenter.node_iam_role_name
}


output "karpenter_queue_name" {
  description = "The name of the Karpenter SQS Queue"
  value       = module.karpenter.queue_name
}