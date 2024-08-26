variable "network_name" {
  description = "Nom du réseau Docker à créer"
  type        = string
  default     = "my_custom_network"
}

variable "volume_name" {
  description = "Nom du volume Docker à créer"
  type        = string
  default     = "nginx_data"
}

variable "nginx_image" {
  description = "Nom de l'image Docker pour Nginx"
  type        = string
  default     = "nginx:latest"
}

variable "nginx_container_name" {
  description = "Nom du conteneur Nginx à créer"
  type        = string
  default     = "nginx_container"
}

variable "nginx_internal_port" {
  description = "Port interne pour le conteneur Nginx"
  type        = number
  default     = 80
}

variable "nginx_external_port" {
  description = "Port externe pour le conteneur Nginx"
  type        = number
  default     = 8080
}
