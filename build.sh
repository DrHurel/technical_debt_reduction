#!/usr/bin/env bash
# Compile le mémoire en PDF (gère glossaire + bibliographie).
set -e
cd "$(dirname "$0")"
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
echo "OK -> main.pdf"
