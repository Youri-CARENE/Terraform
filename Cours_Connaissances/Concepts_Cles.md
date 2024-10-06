# Concepts Clés de Terraform

## Introduction à Terraform
- **Terraform** est un outil d'Infrastructure as Code (IaC) qui permet de provisionner et gérer des infrastructures sur divers fournisseurs (AWS, Azure, GCP, etc.).
- Le langage de configuration utilisé est le **HCL (HashiCorp Configuration Language)**.

## Concepts Principaux
- **Providers** : Plugins qui permettent à Terraform d'interagir avec les fournisseurs.
- **Resources** : Blocs représentant les composants de l'infrastructure (ex. : VM, réseaux).
- **État** : Fichier (`terraform.tfstate`) qui suit l'état actuel de l'infrastructure.
- **Variables** : Valeurs dynamiques pour rendre la configuration flexible.
- **Modules** : Groupes de fichiers Terraform réutilisables pour modulariser l'infrastructure.

## Workflow Terraform
1. **Initialisation** (`terraform init`) : Installe les plugins.
2. **Planification** (`terraform plan`) : Prévisualise les changements.
3. **Application** (`terraform apply`) : Applique les changements.
4. **Destruction** (`terraform destroy`) : Supprime les ressources créées.
