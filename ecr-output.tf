# output of ECR repository 
output "registry_id" {
  description = "The account ID of the registry holding the repository."
  value = [for repo_key, repo in aws_ecr_repository.ecr: repo.registry_id]
}
#output of ECR URL
output "repository_url" {
  description = "The URL of the repository."
  value = [for repo_key, repo in aws_ecr_repository.ecr: repo.repository_url]
}