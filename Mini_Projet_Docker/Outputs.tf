# Outputs.tf

output "container_name" {
  description = "Nom du conteneur Docker"
  value       = docker_container.my_container.name
}

output "container_port" {
  description = "Port exposé du conteneur Docker"
  value       = docker_container.my_container.ports[0].external
}
