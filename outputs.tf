output "enabled_services" {
  description = "List of enabled APIs"
  value       = [for service in google_project_service.enabled_apis : service.service]
}
