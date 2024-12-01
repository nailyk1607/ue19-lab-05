# Utiliser une image de base Python
FROM python:3.13

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app.py app.py

# Commande pour exécuter l'application
CMD ["python", "app.py"]