#!/usr/bin/env bash
# Publiser Tomteplanlegger 3D til GitHub Pages.
# Bruk:  ./deploy.sh https://github.com/BRUKERNAVN/tomteplanlegger.git
set -euo pipefail

REPO="${1:-}"
if [ -z "$REPO" ]; then
  echo "Bruk: ./deploy.sh <git-remote-url>"
  echo "Eks:  ./deploy.sh https://github.com/BRUKERNAVN/tomteplanlegger.git"
  exit 1
fi

if [ ! -d .git ]; then
  git init
  git branch -M main
fi

git add -A
git commit -m "Tomteplanlegger 3D" || echo "ingen endringer å committe"

if git remote | grep -q '^origin$'; then
  git remote set-url origin "$REPO"
else
  git remote add origin "$REPO"
fi

git push -u origin main

echo
echo "Pushet. Slå på GitHub Pages:"
echo "  Settings -> Pages -> Source: 'Deploy from a branch' -> main / (root) -> Save"
echo "Siden ligger da på https://<brukernavn>.github.io/<repo>/ etter et par minutter."
