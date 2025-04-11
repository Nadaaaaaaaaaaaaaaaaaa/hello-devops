#!/bin/sh

echo "✅ Début des tests..."

# Vérifier que le serveur Nginx fonctionne
if curl -s http://localhost | grep -q "Hello"; then
  echo "✅ Test de page d'accueil : OK"
else
  echo "❌ Test de page d'accueil : ÉCHEC"
  exit 1
fi

echo "✅ Tous les tests sont passés avec succès !"
