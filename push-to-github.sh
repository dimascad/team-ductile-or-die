#!/bin/bash

echo "Pushing to GitHub..."
echo "When prompted:"
echo "- Username: dimascad"
echo "- Password: Use a Personal Access Token (not your GitHub password)"
echo
echo "To create a token: GitHub.com → Settings → Developer settings → Personal access tokens → Generate new token"
echo

git push -u origin main

echo
echo "After pushing, enable GitHub Pages:"
echo "1. Go to: https://github.com/dimascad/team-ductile-or-die/settings/pages"
echo "2. Source: Deploy from a branch"
echo "3. Branch: main, folder: / (root)"
echo "4. Click Save"
echo
echo "Your site will be live at: https://dimascad.github.io/team-ductile-or-die/"