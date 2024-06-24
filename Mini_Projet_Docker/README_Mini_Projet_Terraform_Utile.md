
# Mini Projet Terraform Utile

 Ce dossier contient des fiches de révision conçues pour vous aider à vous lancer avec Terraform. Que vous soyez un débutant ou que vous cherchiez à rafraîchir vos connaissances, ces fiches couvrent les étapes essentielles pour réaliser un projet Terraform simple.

## Contenu

### 1. Dockerfile

Le fichier `Dockerfile` contient les instructions nécessaires pour construire une image Docker pour notre projet Terraform. Voici quelques points abordés :

- Configuration de l'image de base
- Installation des dépendances
- Configuration de l'environnement de travail

### 2. LaunchConteneur.sh

Le fichier `LaunchConteneur.sh` est un script shell pour construire et lancer un conteneur Docker basé sur notre `Dockerfile`. Les étapes incluent :

- Construction de l'image Docker avec `docker build`
- Lancement du conteneur avec `docker run` en montant le volume nécessaire

### 3. Start.sh

Le fichier `Start.sh` est un script shell pour automatiser le lancement du script `LaunchConteneur.sh`. Les étapes incluent :

- Donner les permissions d'exécution au script `LaunchConteneur.sh`
- Exécution du script `LaunchConteneur.sh`
