# Diaporama de soutenance — thème LaTeX

Thème Beamer pour la soutenance du mémoire *Réduction de la dette technique
dans un environnement de production* (UM · Free Mobile · Beemo Technologie).

## Compilation

Moteur **XeLaTeX** ou **LuaLaTeX** (fontspec). Deux passes sont nécessaires
pour positionner les graphismes des séparateurs de section
(`remember picture`).

```bash
./build.sh
# ou
latexmk -xelatex soutenance.tex
```

## Polices

Chargées par nom de fichier `.otf`, toutes présentes dans TeX Live — aucune
installation système requise :

| Rôle   | Police          | Paquet TeX Live      |
|--------|-----------------|----------------------|
| Titres | Source Serif 4  | `sourceserif`        |
| Corps  | Source Sans 3   | `sourcesans`         |
| Code   | JetBrains Mono  | `jetbrainsmono-otf`  |

Pour utiliser des polices installées sur le système, remplacer le bloc
« POLICES » de `soutenance.tex`. En dernier recours, Latin Modern Roman /
Latin Modern Sans (toujours disponibles) conviennent.

## Structure

- `soutenance.tex` — thème + diapositives modèles (titre, séparateur de
  section, texte/puces, deux colonnes, image pleine page, citation, tableau,
  bloc de code, chiffres clés, schéma, remerciements).
- `assets/` — logos partenaires (`logo-um.png`, `logo-free.png`,
  `logo-beemo.png`), affichés sur cartouches blancs.

## Personnalisation

- **Palette** : bloc `PALETTE` (corail UM, rouge Free, bleu Beemo, ivoire…).
- **Métadonnées** : `\title`, `\author`, `\shortname`, `\shortwork`.
- **Séparateur de section** : `\sectionslide{01}{Titre}{Phrase de transition}`.
- **Chiffre clé** : `\bignum{+24\,\%}{légende}`.
- **Pied de page** : commun à toutes les diapositives (nom · titre court ·
  logos · numéro).

Les diapositives après la page de titre sont des **modèles** à remplacer par
le contenu réel de la soutenance.
