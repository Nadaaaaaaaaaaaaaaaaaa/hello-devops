#!/bin/sh

echo "✅ Début des tests..."

# Attendre un peu que le service soit up (optionnel)
sleep 2

# Tester si la page d'accueil renvoie bien "Hello" (ou un autre mot clé)
if curl -s http://localhost:8081 | grep -q "Hello"; then
  echo "✅ Test de page d'accueil : OK"
else
  echo "❌ Test de page d'accueil : ÉCHEC"
  exit 1
fi

echo "✅ Tous les tests sont passés avec succès !"
