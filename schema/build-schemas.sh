#!/usr/bin/env bash
# Génère les schémas du mémoire à partir des sources Mermaid.
#
#   schema/*.mermaid  ->  figures/*.png
#
# Chaque fichier .mermaid est rendu en .png (haute résolution) dans figures/,
# où LaTeX les récupère via \graphicspath{{figures/}}.
#
# Usage :
#   ./schema/build-schemas.sh            # (re)génère tous les schémas
#   ./schema/build-schemas.sh framework  # ne régénère que schema/framework.mermaid
#
# Dépendances : Node.js (npx). mermaid-cli est récupéré automatiquement.
set -euo pipefail

# Racine du projet = dossier parent de ce script.
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SCHEMA_DIR="$ROOT/schema"
FIG_DIR="$ROOT/figures"

# Échelle de rendu (3 = ~3x la taille de base, net pour l'impression).
SCALE="${MMDC_SCALE:-3}"

# Config Puppeteer : --no-sandbox requis dans la plupart des environnements CI / WSL.
PUPPETEER_CFG="$(mktemp)"
trap 'rm -f "$PUPPETEER_CFG"' EXIT
printf '{ "args": ["--no-sandbox", "--disable-setuid-sandbox"] }\n' > "$PUPPETEER_CFG"

mkdir -p "$FIG_DIR"

# Sélection des sources : argument(s) explicite(s) ou tous les .mermaid.
if [[ $# -gt 0 ]]; then
  sources=()
  for name in "$@"; do
    sources+=("$SCHEMA_DIR/${name%.mermaid}.mermaid")
  done
else
  sources=("$SCHEMA_DIR"/*.mermaid)
fi

for src in "${sources[@]}"; do
  if [[ ! -f "$src" ]]; then
    echo "!! introuvable : $src" >&2
    exit 1
  fi
  base="$(basename "$src" .mermaid)"
  out="$FIG_DIR/${base}.png"
  echo ">> $base.mermaid -> figures/${base}.png"
  npx -y -p @mermaid-js/mermaid-cli mmdc \
    -i "$src" \
    -o "$out" \
    -p "$PUPPETEER_CFG" \
    -b white \
    -s "$SCALE"
done

echo "OK -> figures/"
