# Mini Projet Terraform & Docker

## Introduction
Ce projet a été conçu pour aider les utilisateurs à apprendre et à pratiquer Terraform en utilisant Docker. En créant et en déployant un conteneur Docker, vous vous familiariserez avec des concepts clés de l'infrastructure en tant que code et la conteneurisation.

## Objectifs du Projet
- Comprendre comment utiliser Terraform pour construire et gérer des conteneurs Docker.
- Développer des compétences pratiques en utilisant Docker et Terraform ensemble.

## Prérequis
- **Terraform** : Version 1.1.2 ou ultérieure.
- **Docker** : Assurez-vous que Docker est installé et en cours d'exécution sur votre machine.

## Fichiers Inclus
- **Dockerfile** : Définit l'image Docker.
- **terraform.tf** : Le fichier principal pour définir l'infrastructure.
- **Variables.tf** : Les variables utilisées dans la configuration Terraform.
- **Outputs.tf** : Déclare les informations de sortie après le déploiement.
- **LaunchConteneur.sh** et **Start.sh** : Scripts pour automatiser la construction et l'exécution des conteneurs.

## Étapes pour Lancer le Projet
1. **Construire l'Image Docker** :
   ```shell
   ./LaunchConteneur.sh