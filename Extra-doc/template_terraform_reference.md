
# 📚 Référence Complète – Template Terraform Réutilisable

---

## 🎯 Objectif

Créer une structure de projet Terraform propre, modulaire, réutilisable et maintenable, adaptée à différents environnements (`dev`, `prod`, etc.), avec une gestion claire des fichiers `backend`, `tfvars`, `variables.tf`, `main.tf`, `cloud-init` et des modules.

---

## 🧭 Structure recommandée

```
terraform-project/
├── modules/
│   └── nom_module/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   │   └── backend.tf
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       ├── terraform.tfvars
│       └── backend.tf
├── cloud-init/
│   └── cloud-init.yaml
├── .gitignore
└── README.md
```

---

## 🧱 Fichiers essentiels & Bonnes pratiques

### 1. `backend.tf`

- Utilisé pour stocker l’état (`terraform.tfstate`) à distance
- Exemple avec AWS S3 :

```hcl
terraform {
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "env/dev/terraform.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
```

**✅ Bonnes pratiques :**
- Un backend différent par environnement
- Utiliser `dynamodb_table` pour gérer les verrous (lock)
- Ne jamais commit de fichier `.tfstate`

---

### 2. `variables.tf`

- Définit toutes les variables d’entrée attendues

```hcl
variable "instance_type" {
  description = "Type de l'instance EC2"
  type        = string
  default     = "t3.micro"
}

variable "tags" {
  description = "Tags communs"
  type        = map(string)
}
```

**✅ Bonnes pratiques :**
- Utiliser `description` et `type` toujours
- Éviter les variables implicites
- Grouper les variables logiquement

---

### 3. `terraform.tfvars`

- Fichier de configuration **spécifique à l’environnement**
- Contient les valeurs concrètes des variables

```hcl
instance_type = "t3.small"
tags = {
  env   = "dev"
  owner = "infra-team"
}
```

**✅ Bonnes pratiques :**
- Un `.tfvars` par environnement
- Ne jamais inclure d'informations sensibles en clair
- Ne pas versionner s’il contient des secrets

---

### 4. `main.tf`

- Contient la logique principale et les appels de modules

```hcl
provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source        = "../../modules/ec2"
  instance_type = var.instance_type
  user_data     = file("${path.module}/../../cloud-init/cloud-init.yaml")
  tags          = var.tags
}
```

**✅ Bonnes pratiques :**
- Découper en plusieurs fichiers si nécessaire (`provider.tf`, `resources.tf`)
- Ne pas surcharger ce fichier
- Séparer clairement chaque ressource ou module

---

### 5. `cloud-init.yaml`

- Script passé à une machine EC2 pour son initialisation

```yaml
#cloud-config
runcmd:
  - apt-get update
  - apt-get install -y nginx
```

**✅ Bonnes pratiques :**
- Utiliser `file("chemin")` pour charger dans `main.tf`
- Versionner ce fichier dans un dossier dédié
- Ne pas écrire de scripts inline dans Terraform

---

## 📦 Modules

**Structure :**

```
modules/
└── ec2/
    ├── main.tf
    ├── variables.tf
    └── outputs.tf
```

**Exemple de module EC2 :**

> `modules/ec2/main.tf`

```hcl
resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  user_data     = var.user_data
  tags          = var.tags
}
```

> `modules/ec2/variables.tf`

```hcl
variable "ami" {}
variable "instance_type" {}
variable "user_data" {}
variable "tags" {
  type = map(string)
}
```

> `modules/ec2/outputs.tf`

```hcl
output "instance_id" {
  value = aws_instance.this.id
}
```

**✅ Bonnes pratiques :**
- Un module = une responsabilité
- Nommer proprement les outputs
- Ne jamais référencer une ressource d’un autre module directement

---

## 🔒 Sécurité & versioning

- Ajouter un `.gitignore` :
```
.terraform/
terraform.tfstate
*.tfstate.*
*.tfvars
```

- Utiliser AWS Secrets Manager, Vault ou autre pour les secrets
- Ne jamais hardcoder un mot de passe ou token dans `.tf`

---

## 🚀 Utilisation standard

```bash
terraform fmt                    # Formate le code
terraform init                   # Initialise le backend et télécharge les providers
terraform validate               # Valide la syntaxe
terraform plan -var-file="terraform.tfvars"   # Simule les changements
terraform apply -var-file="terraform.tfvars"  # Applique les changements
terraform destroy -var-file="terraform.tfvars"  # Supprime l'infra
```

---

## ✅ Résumé des best practices

- 📦 Modulariser le code : réutilisable et lisible
- 🔄 Séparer `tfvars`, `backend`, `main`, `variables`
- 🔐 Protéger les secrets : ne pas commit `.tfstate` ni secrets en clair
- 📁 Structurer par environnement (`dev`, `prod`, etc.)
- 🧪 Toujours faire un `plan` avant `apply`
- ✏️ Documenter (`README.md`, `description` dans les variables)
