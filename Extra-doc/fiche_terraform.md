
# 🌍 Terraform – Fiche de Révision : Lancer & Gérer son Code

---

## 📌 Objectif

Savoir quoi faire une fois le code prêt pour **initialiser**, **tester**, **appliquer**, **cibler**, **importer** ou **détruire** une infra avec Terraform.

---

## 🧰 Commandes de base

| Commande               | Rôle principal                                         |
|------------------------|--------------------------------------------------------|
| `terraform fmt`        | Formate le code `.tf` proprement                      |
| `terraform init`       | Initialise le projet et télécharge les providers      |
| `terraform validate`   | Vérifie la syntaxe Terraform                          |
| `terraform plan`       | Simule les changements sans rien appliquer            |
| `terraform apply`      | Applique les changements (déploie l’infra)            |
| `terraform destroy`    | Supprime toute l’infrastructure gérée par Terraform   |
| `terraform import`     | Lie une ressource existante au state Terraform        |
| `terraform apply -target=...` | Applique uniquement certaines ressources ciblées     |
| `terraform destroy -target=...` | Supprime uniquement certaines ressources ciblées     |

---

## 🔄 Workflow classique

1. 🔧 Formatage du code
   ```bash
   terraform fmt
   ```

2. 🚀 Initialisation du projet
   ```bash
   terraform init
   ```

3. ✅ Validation de la syntaxe
   ```bash
   terraform validate
   ```

4. 🔍 Prévisualisation des changements
   ```bash
   terraform plan
   ```

5. 🚢 Application des changements
   ```bash
   terraform apply
   # ou sans confirmation :
   terraform apply -auto-approve
   ```

---

## 🛠️ Autres commandes utiles

### 🎯 Cibler une ressource spécifique

```bash
terraform apply -target=aws_instance.mon_instance
terraform destroy -target=aws_s3_bucket.mon_bucket
```

### 🔄 Importer une ressource existante

```bash
terraform import aws_instance.mon_instance i-0123456789abcdef0
```

---

## 📋 Bonnes pratiques

- Toujours faire un `plan` avant un `apply`
- Ne jamais versionner les fichiers `.tfstate` dans Git
- Utiliser des **workspaces** ou des **backends** pour gérer plusieurs environnements (dev/prod)
- Garder son code clair et modulaire

