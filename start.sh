#!/bin/sh

# Lancer Nginx en arrière-plan
nginx

# Attendre un peu que le serveur démarre
sleep 2

# Lancer les tests
/run-tests.sh

# Garder le conteneur en vie (optionnel)
tail -f /dev/null
