# Deploy v17 to GitHub Pages

Repository: https://github.com/rezwanratul1492/FinanceWebsite
Public site: https://rezwanratul1492.github.io/FinanceWebsite/

1. Unzip the v17 release.
2. In GitHub, open `rezwanratul1492/FinanceWebsite` and switch to `main`.
3. Upload the CONTENTS of the release folder to the repository root, replacing the older versions.
4. Make sure these are at the repository root: `index.html`, `404.html`, `.nojekyll`, `robots.txt`, `sitemap.xml`, `site.webmanifest`, plus the `assets/` folder.
5. Commit the changes.
6. If Pages is not already enabled: Settings -> Pages -> Deploy from a branch -> `main` -> `/ (root)` -> Save.
7. Wait a few minutes, then hard-refresh the public URL (Ctrl+F5 / Cmd+Shift+R).

## Important
Do not upload the enclosing `rezwan-finance-website-github-v17` folder as a nested folder. Upload its contents so `index.html` is directly at the repository root.

## Supabase
The public project URL and publishable key are already configured in `index.html`. You still need the one-time database/storage/auth setup in `SUPABASE_GALLERY_SETUP.md`.


### Admin-managed profile photo
After Supabase is configured, future profile-photo changes happen from **Gallery > Admin** on the live website. They do not require another GitHub deployment.
