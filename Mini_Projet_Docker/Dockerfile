# Dockerfile

FROM python:3.8-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier tout le contenu du répertoire courant dans le conteneur
COPY . /app

# Installer les dépendances nécessaires
RUN pip install -r requirements.txt

# Commande par défaut pour exécuter l'application Python
CMD ["python", "app.py"]
