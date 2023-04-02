Ouvrez un terminal et exécutez la commande suivante pour mettre à jour la liste des paquets et installer les mises à jour disponibles:

 
sudo apt update && sudo apt upgrade -y
Télécharger Terraform:
Allez sur la page des téléchargements de Terraform (https://www.terraform.io/downloads.html) et copiez l'URL de la dernière version de Terraform pour Linux. Ensuite, utilisez wget pour télécharger le fichier. Par exemple, pour télécharger Terraform 1.1.2, exécutez la commande suivante :

 
wget https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_linux_amd64.zip
Veuillez noter que la version peut être différente. Vérifiez la dernière version disponible sur le site Web de Terraform et ajustez la commande en conséquence.

Installer unzip:
Si vous n'avez pas déjà installé unzip, installez-le avec la commande suivante :
 
sudo apt install -y unzip
Extraire Terraform:
Utilisez unzip pour extraire le fichier téléchargé :

 
unzip terraform_1.1.2_linux_amd64.zip
Déplacer Terraform dans un répertoire exécutable:
Déplacez le binaire Terraform extrait vers un répertoire de votre choix. Une bonne option est le répertoire /usr/local/bin, car il est généralement inclus dans le PATH par défaut. Exécutez la commande suivante :

 
sudo mv terraform /usr/local/bin/
Vérifier l'installation:
Vérifiez que Terraform est correctement installé en exécutant la commande suivante :


terraform version
Si l'installation a réussi, la version de Terraform sera affichée.