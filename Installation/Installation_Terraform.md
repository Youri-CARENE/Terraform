
# Installation de Terraform

Bienvenue dans le guide d'installation de Terraform. Ce document vous guidera à travers le processus d'installation de Terraform sur différents systèmes.

## Installation sur Linux
Pour installer Terraform sur un système Linux, suivez les étapes ci-dessous :

1. **Mise à jour des paquets** :
   Ouvrez un terminal et mettez à jour la liste des paquets en utilisant la commande suivante :
   ```shell
   sudo apt update && sudo apt upgrade -y
   ```
   Cela garantit que votre système est à jour avant l'installation.

2. **Téléchargement de Terraform** :
   Allez sur la [page de téléchargement de Terraform](https://www.terraform.io/downloads.html) pour trouver la dernière version. Ensuite, téléchargez la version appropriée pour Linux :
   ```shell
   wget https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_linux_amd64.zip
   ```

3. **Installer `unzip` si nécessaire** :
   Si vous n'avez pas encore installé l'utilitaire `unzip`, installez-le avec la commande suivante :
   ```shell
   sudo apt install -y unzip
   ```

4. **Extraction et installation** :
   Extrayez l'archive téléchargée et déplacez le binaire Terraform vers un emplacement de votre PATH :
   ```shell
   unzip terraform_1.1.2_linux_amd64.zip
   sudo mv terraform /usr/local/bin/
   ```

5. **Vérification de l'installation** :
   Pour vérifier que Terraform a été installé correctement, exécutez la commande suivante :
   ```shell
   terraform version
   ```
   Si l'installation est réussie, la version de Terraform sera affichée.

## Autres Plateformes
Pour installer Terraform sur d'autres systèmes d'exploitation comme Windows ou macOS, consultez la [documentation officielle de Terraform](https://learn.hashicorp.com/terraform).
