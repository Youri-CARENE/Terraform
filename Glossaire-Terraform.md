# Glossaire Terraform

## 1. **Terraform**
**Définition**: Outil d'infrastructure en tant que code (IaC) permettant de gérer et de provisionner des ressources d'infrastructure à travers différents fournisseurs (clouds, services, etc.).
**Utilité**: Permet d'automatiser la gestion des infrastructures, rendant les processus reproductibles et traçables.
**Commande**: 
    ```bash
    terraform init
    ```
**Exemple**:
    ```bash
    terraform apply
    ```

---

## 2. **Provider**
**Définition**: Composant Terraform qui permet d'interagir avec les APIs des services cloud ou autres systèmes.
**Utilité**: Chaque provider contient les ressources et les services qu'il est capable de gérer.
**Exemple**:
    ```hcl
    provider "aws" {
      region = "us-west-2"
    }
    ```

---

## 3. **Resource**
**Définition**: Unité de base dans Terraform, représentant un composant spécifique d'une infrastructure (ex: une instance EC2, un bucket S3, etc.).
**Utilité**: Permet de décrire et de provisionner les composants de l'infrastructure.
**Exemple**:
    ```hcl
    resource "aws_instance" "example" {
      ami           = "ami-123456"
      instance_type = "t2.micro"
    }
    ```

---

## 4. **State (état)**
**Définition**: Fichier de suivi dans lequel Terraform stocke l'état de l'infrastructure telle qu'elle a été provisionnée.
**Utilité**: Permet à Terraform de suivre l'évolution des ressources et de prendre des décisions lors de l'application de changements.
**Commande**:
    ```bash
    terraform show
    ```

---

## 5. **Variables**
**Définition**: Paramètres dynamiques qui permettent de rendre les configurations Terraform plus flexibles et réutilisables.
**Utilité**: Facilite la gestion de différentes configurations avec des entrées dynamiques.
**Exemple**:
    ```hcl
    variable "instance_type" {
      default = "t2.micro"
    }
    ```
**Utilisation dans un fichier**:
    ```hcl
    resource "aws_instance" "example" {
      instance_type = var.instance_type
    }
    ```

---

## 6. **Outputs**
**Définition**: Permet de renvoyer des informations sur les ressources créées par Terraform.
**Utilité**: Affiche des données ou expose des valeurs à d'autres configurations.
**Exemple**:
    ```hcl
    output "instance_ip" {
      value = aws_instance.example.public_ip
    }
    ```

---

## 7. **Modules**
**Définition**: Ensemble de ressources regroupées dans une unité logique réutilisable. Un module peut être utilisé pour organiser le code Terraform.
**Utilité**: Facilite la réutilisation du code dans différents projets ou environnements.
**Exemple**:
    ```hcl
    module "vpc" {
      source = "./modules/vpc"
    }
    ```

---

## 8. **Plan**
**Définition**: Commande qui permet de visualiser les changements que Terraform va effectuer sans les appliquer.
**Utilité**: Donne un aperçu des modifications avant de les appliquer, permettant ainsi une validation préalable.
**Commande**:
    ```bash
    terraform plan
    ```

---

## 9. **Apply**
**Définition**: Commande qui applique les changements nécessaires pour atteindre l'état défini dans les fichiers de configuration Terraform.
**Utilité**: Provisionne ou met à jour l'infrastructure selon les fichiers HCL (HashiCorp Configuration Language).
**Commande**:
    ```bash
    terraform apply
    ```

---

## 10. **Destroy**
**Définition**: Commande qui permet de détruire toutes les ressources gérées par Terraform.
**Utilité**: Supprime l'infrastructure de manière contrôlée.
**Commande**:
    ```bash
    terraform destroy
    ```

---

## 11. **Backend**
**Définition**: Composant qui spécifie où et comment l'état Terraform est stocké et verrouillé pendant l'exécution.
**Utilité**: Permet de stocker l'état à distance (par exemple, dans un bucket S3), facilitant le travail en équipe.
**Exemple**:
    ```hcl
    terraform {
      backend "s3" {
        bucket = "mybucket"
        key    = "path/to/my/key"
        region = "us-west-2"
      }
    }
    ```

---

## 12. **Data Source**
**Définition**: Permet de récupérer des informations à partir de ressources ou de services externes sans les créer ou les modifier.
**Utilité**: Utile pour interroger l'état d'une infrastructure existante.
**Exemple**:
    ```hcl
    data "aws_ami" "example" {
      most_recent = true
      owners      = ["self"]
    }
    ```

---

## 13. **Locks**
**Définition**: Mécanisme qui empêche plusieurs utilisateurs ou processus de modifier simultanément l'état Terraform, évitant ainsi les conflits.
**Utilité**: Garantit l'intégrité des opérations Terraform en verrouillant l'état.
**Commande**:
    ```bash
    terraform apply -lock=true
    ```

---

## 14. **Provisioner**
**Définition**: Composant qui permet d'exécuter des scripts ou des commandes après la création d'une ressource.
**Utilité**: Utilisé pour configurer les ressources après leur provisionnement.
**Exemple**:
    ```hcl
    resource "aws_instance" "example" {
      provisioner "local-exec" {
        command = "echo 'Instance créée'"
      }
    }
    ```

---

## 15. **Terraform Registry**
**Définition**: Répertoire central où les modules et les providers Terraform sont partagés et disponibles pour la communauté.
**Utilité**: Permet de réutiliser des modules et des providers existants.
**Lien**: [https://registry.terraform.io/](https://registry.terraform.io/)

---

## 16. **Workspace**
**Définition**: Fonctionnalité permettant de gérer plusieurs environnements (ex: dev, prod) avec la même configuration.
**Utilité**: Facilite la gestion de différents environnements avec des états distincts.
**Commande**:
    ```bash
    terraform workspace new dev
    terraform workspace select dev
    ```

---

## 17. **Taint**
**Définition**: Marque une ressource pour forcer sa recréation lors de la prochaine exécution de `terraform apply`.
**Utilité**: Permet de recréer une ressource spécifique sans toucher au reste de l'infrastructure.
**Commande**:
    ```bash
    terraform taint aws_instance.example
    ```

---

## 18. **Refresh**
**Définition**: Commande qui permet de synchroniser l'état Terraform avec l'état réel de l'infrastructure.
**Utilité**: Utile pour vérifier les changements effectués manuellement ou hors de Terraform.
**Commande**:
    ```bash
    terraform refresh
    ```

---

## 19. **Remote State**
**Définition**: Fichier d'état stocké à distance, souvent dans des services comme AWS S3 ou HashiCorp Consul.
**Utilité**: Utile pour partager l'état d'une infrastructure entre plusieurs équipes ou environnements.
**Exemple**:
    ```hcl
    data "terraform_remote_state" "vpc" {
      backend = "s3"
      config = {
        bucket = "my-bucket"
        key    = "env/dev/terraform.tfstate"
        region = "us-west-2"
      }
    }
    ```

---

## 20. **HCL (HashiCorp Configuration Language)**
**Définition**: Langage de configuration utilisé par Terraform pour définir les infrastructures.
**Utilité**: Simple à lire et écrire, optimisé pour l'Infrastructure as Code.
**Exemple**:
    ```hcl
    resource "aws_s3_bucket" "bucket" {
      bucket = "my-tf-test-bucket"
    }
    ```
