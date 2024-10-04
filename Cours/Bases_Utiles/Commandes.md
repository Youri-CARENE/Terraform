
- `terraform fmt` : 
   - Reformate vos fichiers de configuration Terraform dans un style canonique. C'est utile pour maintenir une cohérence de style, ce qui facilite la lecture et la maintenance du code. 

- `terraform show` / `terraform state show resource.name` :
   - Permet d'inspecter l'état actuel de votre infrastructure gérée par Terraform. Affiche des informations spécifiques sur la ressource nommée lors de l'utilisation de la syntaxe `terraform state show resource.name`.

- `terraform providers` :
   - Affiche une arborescence de tous les fournisseurs utilisés dans la configuration Terraform actuelle. C'est utile pour comprendre quelles versions de fournisseur sont actuellement en usage.

- `terraform output` :
   - Cette commande est utilisée pour extraire la valeur des sorties définies dans la configuration Terraform. Les sorties sont souvent utilisées pour extraire des informations sur les ressources créées, comme des adresses IP ou des URL.

- `terraform refresh` :
   - Cette commande est utilisée pour synchroniser l'état local de Terraform avec l'état réel de l'infrastructure. Cela peut être nécessaire si des modifications ont été apportées à l'infrastructure en dehors de Terraform.

- `terraform graph` :
   - Cette commande est utilisée pour générer un graphique visuel de la dépendance entre les ressources définies dans votre configuration Terraform. C'est utile pour comprendre comment les ressources sont liées les unes aux autres.

- `terraform validate` :
   - Cette commande vérifie que la configuration Terraform est syntaxiquement valide et qu'elle est prête à être appliquée. Elle vérifie également la syntaxe des blocs d'arguments des ressources. C'est une bonne pratique de valider la configuration avant de l'appliquer pour s'assurer qu'il n'y a pas d'erreurs.