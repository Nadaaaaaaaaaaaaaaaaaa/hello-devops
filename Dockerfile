# Étape 1 : Utiliser une image de base (Alpine ici)
FROM nginx:alpine

# Étape 2 : Définir le dossier de travail
WORKDIR /

# Étape 3 : Copier le script dans le conteneur
COPY run-tests.sh /run-tests.sh

# Étape 4 : Donner la permission d'exécution
RUN chmod +x /run-tests.sh

# Étape 5 : Copier la page HTML dans le dossier nginx
COPY index.html /usr/share/nginx/html/index.html

# Étape 6 : Exposer le port 80
EXPOSE 80

# Étape 7 : Lancer le script de test (optionnel si besoin)
# Sinon, tu laisses nginx démarrer automatiquement :
# CMD ["/run-tests.sh"]
