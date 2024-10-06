# Mini Projet Docker avec Terraform

Ce mini projet vous guidera à travers l'utilisation de Docker en combinaison avec Terraform pour créer une infrastructure de conteneurs et vous permettre de vous entraîner à utiliser ces outils de manière concrète.

## Objectif
L'objectif est de déployer un conteneur Docker utilisant un fichier de configuration Terraform. Ce projet vous permettra de comprendre la création, le déploiement, et la gestion d'une infrastructure conteneurisée en utilisant Terraform.

## Prérequis
- **Terraform** : Assurez-vous que Terraform est installé sur votre machine.
- **Docker** : Assurez-vous également que Docker est installé et configuré.

## Structure des Fichiers
Le projet contient les fichiers suivants :
1. **Dockerfile** : Définit l'image Docker à construire.
2. **terraform.tf** : Fichier de configuration principal pour Terraform.
3. **Variables.tf** : Déclare les variables nécessaires pour Terraform.
4. **Outputs.tf** : Définit les outputs du projet Terraform.
5. **LaunchConteneur.sh** : Script bash pour construire et lancer le conteneur Docker.
6. **Start.sh** : Script bash pour rendre exécutable et exécuter `LaunchConteneur.sh`.

## Étapes du Projet

### 1. Construction de l'Image Docker
Le fichier `Dockerfile` contient la définition de l'image Docker. Terraform sera utilisé pour gérer la création et la configuration du conteneur basé sur cette image.

Voici un exemple de `Dockerfile` :

```Dockerfile
# Dockerfile
FROM python:3.8-slim

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
