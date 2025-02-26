output "nginx_service" {
  value = "Run 'kubectl port-forward --namespace=${var.namespace} svc/nginx 8080:${var.nginx_port}' and access NGINX at http://localhost:8080"
}
