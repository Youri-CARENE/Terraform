# Variables.tf

variable "container_name" {
  description = "Nom du conteneur Docker"
  type        = string
  default     = "terraform-demo-container"
}

variable "container_port" {
  description = "Port externe pour exposer le conteneur"
  type        = number
  default     = 8080
}
