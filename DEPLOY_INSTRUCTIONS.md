# Deploy Your Team Page to GitHub

Since automatic deployment isn't working, here's how to manually deploy:

## Option 1: Upload via GitHub Web Interface (Easiest)

1. Go to your repository: https://github.com/dimascad/team-ductile-or-die
2. Click "uploading an existing file" or the "Add file" → "Upload files" button
3. Drag and drop the `index.html` file from this folder
4. Write commit message: "Add team landing page"
5. Click "Commit changes"

## Option 2: Use GitHub Desktop (If you have it)

1. Download GitHub Desktop: https://desktop.github.com/
2. Clone your repository
3. Copy index.html to the cloned folder
4. Commit and push

## Enable GitHub Pages (After uploading)

1. Go to: https://github.com/dimascad/team-ductile-or-die/settings/pages
2. Under "Source", select "Deploy from a branch"
3. Choose "main" branch and "/ (root)" folder
4. Click Save

## Your Team Page URL

After enabling GitHub Pages, your site will be available at:
https://dimascad.github.io/team-ductile-or-die/

It may take 2-5 minutes to become active.

## Update Instructables Link

Once you have your Instructables URL:
1. Edit index.html
2. Replace [PLACEHOLDER_INSTRUCTABLES_LINK] with your actual link
3. Upload the updated file to GitHub