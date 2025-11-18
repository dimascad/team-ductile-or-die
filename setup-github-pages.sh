#!/bin/bash

# Team Ductile or Die - GitHub Pages Setup Script
# This script will help you deploy your team page to GitHub

echo "======================================"
echo "Team Ductile or Die - GitHub Setup"
echo "======================================"
echo

# Step 1: Authenticate with GitHub
echo "Step 1: Authenticating with GitHub..."
echo "Please follow the prompts to log in to GitHub"
gh auth login

# Step 2: Create the repository
echo
echo "Step 2: Creating repository 'team-ductile-or-die'..."
gh repo create team-ductile-or-die --public --description "Professional team landing page for MATSCEN 3331L project at OSU"

# Step 3: Add remote and push
echo
echo "Step 3: Pushing code to GitHub..."
git remote add origin https://github.com/dimascad/team-ductile-or-die.git
git branch -M main
git push -u origin main

# Step 4: Enable GitHub Pages
echo
echo "Step 4: Enabling GitHub Pages..."
gh api \
  --method PUT \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/dimascad/team-ductile-or-die/pages \
  -f source[branch]="main" \
  -f source[path]="/"

echo
echo "======================================"
echo "✅ Setup Complete!"
echo "======================================"
echo
echo "Your team page will be available at:"
echo "https://dimascad.github.io/team-ductile-or-die/"
echo
echo "Note: It may take a few minutes for the page to become available."
echo
echo "To update the Instructables link in your page:"
echo "1. Edit index.html"
echo "2. Replace [PLACEHOLDER_INSTRUCTABLES_LINK] with your actual link"
echo "3. Commit and push your changes"