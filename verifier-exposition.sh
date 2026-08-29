#!/usr/bin/env bash
# =====================================================================
#  SportsMatters, controle d'exposition
# =====================================================================
#  Verifie qu'aucun fichier interne n'est accessible sur l'URL publique.
#  A lancer apres chaque mise en ligne :  ./verifier-exposition.sh
#  Sort en erreur (code 1) si un fichier sensible repond, pour qu'un
#  eventuel automatisme puisse s'en apercevoir.
# =====================================================================

BASE="${1:-https://sportsmatters.vercel.app}"
echo "Controle d'exposition sur $BASE"
echo "-----------------------------------------------"

# Ce qui NE DOIT JAMAIS repondre (attendu : 404)
prives=(
  "CLAUDE.md"
  "MEMORY.md"
  "README.md"
  "img/PHOTOS-A-FOURNIR.md"
  ".vercelignore"
  ".git/config"
)

# Ce qui DOIT repondre (attendu : 200)
publics=(
  ""
  "nl/"
  "en/"
  "robots.txt"
  "sitemap.xml"
  "llms.txt"
)

fuite=0
echo "Fichiers internes (doivent renvoyer 404) :"
for p in "${prives[@]}"; do
  code=$(curl -s -o /dev/null -w "%{http_code}" "$BASE/$p")
  if [ "$code" = "404" ] || [ "$code" = "401" ] || [ "$code" = "403" ]; then
    printf "   OK   %-28s %s\n" "$p" "$code"
  else
    printf "  FUITE %-28s %s  <-- ACCESSIBLE PUBLIQUEMENT\n" "$p" "$code"
    fuite=1
  fi
done

echo ""
echo "Fichiers publics (doivent renvoyer 200) :"
for p in "${publics[@]}"; do
  code=$(curl -s -o /dev/null -w "%{http_code}" -L "$BASE/$p")
  if [ "$code" = "200" ]; then
    printf "   OK   %-28s %s\n" "/$p" "$code"
  else
    printf "  MANQUE %-27s %s  <-- devrait etre en ligne\n" "/$p" "$code"
    fuite=1
  fi
done

echo "-----------------------------------------------"
if [ "$fuite" = "0" ]; then
  echo "RESULTAT : tout est conforme."
  exit 0
else
  echo "RESULTAT : anomalie detectee, voir ci-dessus."
  exit 1
fi
