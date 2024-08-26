# Adresse IP du conteneur Nginx
output "nginx_container_ip" {
  description = "Adresse IP du conteneur Nginx"
  value       = docker_container.nginx.network_data[0].ip_address
}

# Nom du réseau Docker créé
output "network_name" {
  description = "Nom du réseau Docker créé"
  value       = docker_network.my_network.name
}

# Nom du volume Docker créé
output "volume_name" {
  description = "Nom du volume Docker créé"
  value       = docker_volume.my_volume.name
}
