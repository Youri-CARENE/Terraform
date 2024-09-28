# Terraform

## Introduction à Terraform
- **Terraform** est un outil d'infrastructure as code (IaC) qui permet de provisionner et gérer des infrastructures sur plusieurs fournisseurs (AWS, Azure, GCP, etc.).
- Le langage de configuration utilisé par Terraform est le **HCL (HashiCorp Configuration Language)**.
- **Terraform** suit un workflow déclaratif : on décrit l'état désiré de l'infrastructure, et Terraform s'occupe de l'atteindre.

## Principaux Concepts de Terraform
- **Providers** : Plugins qui permettent à Terraform d'interagir avec les API des fournisseurs (AWS, GCP, Azure, etc.).
- **Resources** : Blocs représentant les composants de l'infrastructure (VM, bases de données, réseaux, etc.).
- **State** : Fichier de suivi qui stocke l'état actuel de l'infrastructure (souvent `terraform.tfstate`).
- **Variables** : Valeurs dynamiques qui permettent de rendre la configuration plus flexible et réutilisable.
- **Modules** : Un ensemble de fichiers Terraform réutilisables (infrastructure modulaire).
  
## Fichiers Clés
- **.tf** : Les fichiers principaux où l'infrastructure est définie (ex. : `main.tf`, `variables.tf`).
- **output.tf** : Fichier où l'on définit ce que Terraform doit afficher une fois la configuration appliquée.
- **terraform.tfstate** : Fichier d'état qui enregistre l'état de l'infrastructure.
- **terraform.tfvars** : Fichier où l'on stocke les variables de configuration.

## Workflow Terraform
1. **`terraform init`** : Initialisation du projet et des providers.
2. **`terraform plan`** : Prévisualise les changements qui seront appliqués à l'infrastructure.
3. **`terraform apply`** : Applique les changements et crée/modifie l'infrastructure.
4. **`terraform destroy`** : Supprime tous les composants créés.