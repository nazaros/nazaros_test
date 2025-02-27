output "vault_status" {
  description = "Vault Helm deployment status"
  value       = helm_release.vault.status
}

output "vault_service" {
  description = "Vault service information"
  value       = helm_release.vault.metadata
}
