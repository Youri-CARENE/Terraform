# Mini Projet Terraform avec Docker

Ce projet utilise Terraform pour provisionner une infrastructure Docker simple, incluant un conteneur Nginx, un réseau Docker personnalisé, et un volume persistant.

## Prérequis

- **Terraform** : Assurez-vous que Terraform est installé sur votre machine.
- **Docker** : Docker doit être installé et en cours d'exécution.

## Configuration

### 1. Initialiser Terraform

Avant de commencer, vous devez initialiser Terraform pour télécharger les plugins nécessaires.

```bash
terraform init
