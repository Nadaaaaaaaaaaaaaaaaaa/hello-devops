FROM nginx:alpine

# Copie du script dans l'image Docker
COPY run-tests.sh /run-tests.sh
RUN chmod +x /run-tests.sh

# Copie de la page d'accueil personnalisée
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

# Point d'entrée : on lance le script de tests automatiquement
CMD ["/run-tests.sh"]
