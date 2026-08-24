# FinanceWebsite — Md Rezwan Hossain Ratul

Personal academic portfolio for **Md Rezwan Hossain Ratul**, Assistant Professor of Finance at Francis Marion University.

## Live site

Once GitHub Pages is enabled for this repository:

**https://rezwanratul1492.github.io/FinanceWebsite/**

## Files to upload to the repository root

- `index.html` — the complete website and morphing animation
- `404.html` — custom not-found page
- `assets/favicon.svg` — browser favicon
- `assets/apple-touch-icon.png` — mobile/bookmark icon
- `assets/social-preview.png` — LinkedIn/social sharing preview
- `site.webmanifest` — site metadata
- `robots.txt` — search crawler instructions
- `sitemap.xml` — search-engine sitemap
- `.nojekyll` — tells GitHub Pages to serve the files as-is

## Publishing on GitHub Pages

1. Upload all files and the `assets` folder to the root of the `FinanceWebsite` repository.
2. Open **Settings → Pages**.
3. Under **Build and deployment**, choose **Deploy from a branch**.
4. Select **main** and **/(root)**, then Save.
5. The site will publish at the URL above.

## Updating text later

For a small text change:

1. Open `index.html` on GitHub.
2. Click the pencil icon (**Edit this file**).
3. Use the browser's Find command to locate the text you want to change.
4. Edit it and click **Commit changes**.

GitHub Pages will republish after the commit.

For larger layout, animation, or section changes, update `index.html` locally or replace it with a newer version.

## Adding a CV later

The site already contains a hidden CV link. To enable it:

1. Upload your CV to the repository root and name it `cv.pdf`.
2. In `index.html`, search for `CV READY`.
3. On the next `<a>` tag, remove the word `hidden`.
4. Commit the change.

The footer will then show **Download CV**.

## Social preview

The Open Graph metadata is configured for the GitHub Pages URL and uses `assets/social-preview.png`. If the domain changes later, update the canonical URL and the `og:url`, `og:image`, and JSON-LD `url` values in `index.html`.

## Custom domain later

GitHub Pages supports custom domains. If you purchase one later, configure it under **Settings → Pages → Custom domain** and update the URLs in the metadata above.
