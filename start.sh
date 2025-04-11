#!/bin/sh

echo " Démarrage de NGINX..."
nginx &  # بش يخدم في الخلفية

echo " Attente de NGINX..."
sleep 2

echo " Lancement des tests..."
/run-tests.sh

echo " Application prête !"

# باش الكونتينر يبقى حي
tail -f /dev/null
