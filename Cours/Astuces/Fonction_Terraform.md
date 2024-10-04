# Configuration et planification

- `terraform init` : initialise un nouveau projet Terraform.
- `terraform validate` : valide la syntaxe de la configuration Terraform.
- `terraform plan` : affiche le plan d'exécution des changements Terraform.
- `terraform apply` : exécute les changements Terraform planifiés.
- `terraform destroy` : supprime les ressources Terraform déployées.

# Variables et paramètres

- `variable "name" { type = string }` : crée une variable nommée name.
- `terraform.tfvars` : fichier contenant les valeurs des variables.
- `terraform apply -var "name=value"` : affecte une valeur à une variable spécifique.
- `locals` : permet de définir des variables locales dans le fichier de configuration.

# Ressources

- `resource "type" "name" { ... }` : crée une ressource de type type nommée name.
- `depends_on` : spécifie les dépendances entre les ressources.
- `count` : permet de créer plusieurs instances de la même ressource.
- `for_each` : permet de créer plusieurs instances de la même ressource en utilisant un tableau ou une carte.

# Providers

- `provider "name" { ... }` : configure un fournisseur de services, tel que AWS, Google Cloud, Azure, etc.
- `terraform init` : télécharge et installe les plug-ins Terraform nécessaires pour les fournisseurs de services.

# Modules

- `module "name" { ... }` : crée un module Terraform nommé name.
- `source` : spécifie l'emplacement du code source du module.

# État et verrouillage

- `terraform state list` : affiche la liste des ressources Terraform gérées.
- `terraform state show resource_name` : affiche les informations sur une ressource spécifique.
- `terraform state rm resource_name` : supprime une ressource Terraform de l'état.
- `terraform state push` : publie l'état de Terraform dans un stockage distant.
- `terraform state pull` : récupère l'état de Terraform depuis un stockage distant.
- `terraform state lock` : verrouille l'état de Terraform pour éviter les conflits d'exécution.

# Autres commandes utiles

- `terraform refresh` : actualise l'état Terraform avec les valeurs actuelles des ressources.
- `terraform graph` : affiche le graphique des dépendances entre les ressources Terraform.
- `terraform output` : affiche les valeurs de sortie des ressources Terraform.
- `terraform console` : permet d'expérimenter avec les expressions Terraform en ligne de commande.