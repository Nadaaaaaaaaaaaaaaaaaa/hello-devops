# Étape 1 : Utiliser une image Alpine pour copier le script et exécuter les tests
FROM alpine:latest as builder

# Installer curl (utilisé dans le script de test)
RUN apk add --no-cache curl

# Copier le script de test
COPY run-tests.sh /run-tests.sh
RUN chmod +x /run-tests.sh

# Étape 2 : Image finale Nginx
FROM nginx:alpine

# Copier l'index.html dans l'image finale
COPY index.html /usr/share/nginx/html/index.html

# Copier le script depuis le builder
COPY --from=builder /run-tests.sh /run-tests.sh

# Exposer le port web
EXPOSE 80

# Lancer Nginx en arrière-plan et exécuter les tests
CMD ["sh", "-c", "nginx -g 'daemon off;' & ./run-tests.sh"]
