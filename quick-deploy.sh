#!/bin/bash

# Quick deploy script after authentication

echo "Creating repository..."
gh repo create team-ductile-or-die --public --description "Professional team landing page for MATSCEN 3331L project at OSU" --source=. --push

echo "Enabling GitHub Pages..."
sleep 5  # Wait for repo to be fully created
gh api \
  --method PUT \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/dimascad/team-ductile-or-die/pages \
  -f source[branch]="main" \
  -f source[path]="/"

echo "✅ Done! Your page will be available at:"
echo "https://dimascad.github.io/team-ductile-or-die/"