# On part d'une image officielle légère
FROM python:3.11-slim

# On définit le dossier de travail dans le conteneur
WORKDIR /app

# On copie les dépendances en premier (Bonne pratique de mise en cache Docker)
COPY requirements.txt .

# On installe les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# On copie le reste du code
COPY . .

# On expose le port sur lequel l'API va tourner
EXPOSE 8000

# La commande pour démarrer l'API
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]