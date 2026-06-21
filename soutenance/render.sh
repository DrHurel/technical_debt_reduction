#!/usr/bin/env bash
# Rend des pages de soutenance.pdf en PNG (vérification visuelle).
# Usage : ./render.sh [pages...]   ex. ./render.sh 5 9 24
#         sans argument -> toutes les pages.
# Sortie : render/page-NN.png
set -e
cd "$(dirname "$0")"
PDF="soutenance.pdf"
OUT="render"
DPI="${DPI:-110}"
mkdir -p "$OUT"
PAGES="$*"
.venv-render/bin/python - "$PDF" "$OUT" "$DPI" "$PAGES" <<'PY'
import sys, fitz
pdf, out, dpi, pages = sys.argv[1], sys.argv[2], float(sys.argv[3]), sys.argv[4].split()
doc = fitz.open(pdf)
nums = [int(p) for p in pages] if pages else range(1, doc.page_count + 1)
for n in nums:
    page = doc[n - 1]
    pix = page.get_pixmap(dpi=int(dpi))
    path = f"{out}/page-{n:02d}.png"
    pix.save(path)
    print(path)
PY
