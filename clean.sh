#!/usr/bin/env bash
# Supprime les fichiers temporaires de compilation.
# Par défaut on garde main.pdf ; utiliser "-a" pour tout effacer (PDF inclus).
set -e
cd "$(dirname "$0")"
if [ "$1" = "-a" ]; then
    latexmk -C   # efface aussi main.pdf
else
    latexmk -c   # garde main.pdf
fi
# Quelques fichiers que latexmk ne nettoie pas toujours (glossaire/acronymes)
rm -f main.acn main.acr main.alg main.glg main.glo main.gls main.ist main.bbl
echo "Nettoyage terminé."
