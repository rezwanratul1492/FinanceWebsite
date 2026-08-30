# Deploy this release to GitHub Pages

Repository:
https://github.com/rezwanratul1492/FinanceWebsite

Expected public URL:
https://rezwanratul1492.github.io/FinanceWebsite/

## A. Upload/update the website files

1. Download and unzip `rezwan-finance-website-github-v16.zip`.
2. Open your GitHub repository:
   https://github.com/rezwanratul1492/FinanceWebsite
3. Make sure you are on the `main` branch.
4. Click **Add file → Upload files**.
5. Upload the CONTENTS of this release folder, not an extra enclosing folder.

At the repository root you should see files such as:

- `index.html`
- `404.html`
- `README.md`
- `robots.txt`
- `sitemap.xml`
- `site.webmanifest`
- `.nojekyll`
- `assets/`

6. Commit the upload to `main`.

If a file with the same name already exists, upload the new version so it replaces the older copy. Old unused draft HTML files do not affect the live site as long as the correct `index.html` is at the repository root.

## B. Enable GitHub Pages

1. Open the repository **Settings**.
2. In the left sidebar, open **Pages**.
3. Under **Build and deployment**, set **Source** to **Deploy from a branch**.
4. Select branch: `main`.
5. Select folder: `/(root)`.
6. Click **Save**.

GitHub Pages will publish the root `index.html`.

## C. Open the site

After deployment, visit:

https://rezwanratul1492.github.io/FinanceWebsite/

If you already had Pages enabled, uploading/committing the new files is enough; GitHub will redeploy automatically.

## D. Updating the site later

### Small text changes

On GitHub:

1. Open `index.html`.
2. Click the pencil/edit button.
3. Use browser search (Ctrl+F) to find the existing wording.
4. Make the edit.
5. Commit changes.

The website will redeploy automatically.

### Larger design/content changes

Replace `index.html` with the newer version I prepare for you, then commit it.

### Profile photo

The current release still uses an MR placeholder. The future image can live at:

`assets/profile/profile.webp`

and the hero can be updated to reference that file.

### Gallery

The visible Gallery stream works now with placeholders. The Admin button becomes functional only after the Supabase setup is completed.
