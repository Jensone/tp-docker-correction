# Utilisation d’une image Node.js officielle
FROM node:18-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l’application
COPY package.json ./
COPY app.js ./

# Installer les dépendances
RUN npm install

# Exposer le port de l’application
EXPOSE 3000
# Démarrer l’application
CMD ["npm", "start"]
