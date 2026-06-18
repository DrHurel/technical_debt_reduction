#!/usr/bin/env bash
# Compile le diaporama de soutenance (2 passes pour les graphismes
# « remember picture » des séparateurs de section).
set -e
cd "$(dirname "$0")"
xelatex -interaction=nonstopmode -halt-on-error soutenance.tex
xelatex -interaction=nonstopmode -halt-on-error soutenance.tex
# Nettoyage des auxiliaires
rm -f soutenance.aux soutenance.log soutenance.nav soutenance.snm \
      soutenance.toc soutenance.out soutenance.vrb
echo "→ soutenance.pdf généré."
