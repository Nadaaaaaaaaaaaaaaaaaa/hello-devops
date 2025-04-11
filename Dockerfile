# Copier le script dans le conteneur
COPY run-tests.sh /run-tests.sh

# Donner la permission d'exécution
RUN chmod +x /run-tests.sh

# Définir le dossier de travail
WORKDIR /

# Commande d'entrée par défaut (si besoin)
CMD ["/bin/bash"]

# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the custom web page into the Nginx default directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80
