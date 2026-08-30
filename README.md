# Md Rezwan H Ratul — Finance Website

This folder is the GitHub Pages release for:

- Repository: https://github.com/rezwanratul1492/FinanceWebsite
- Public site: https://rezwanratul1492.github.io/FinanceWebsite/

## Current website sections

Home → About → Experience → Research → Teaching → Academic Service → Awards → Hobbies → Gallery → Contact

The current release includes:

- colorful scroll-driven morphing canvas background
- larger profile-photo placeholder beside the hero name
- Experience section
- Research interests plus current research/working papers
- Teaching history and classroom software
- Academic Service
- Awards & Honors
- Hobbies
- horizontal Gallery with left/right navigation
- Gallery Admin login shell fixed to dr.rezwanfmu@gmail.com
- SEO/social metadata, favicon, web manifest, sitemap, robots.txt and custom 404 page

## Important: Gallery admin status

The Admin login UI is present, but secure login/upload is NOT active until Supabase is connected.
No password is stored in this repository.

## Important: Profile photo status

The hero currently shows the MR placeholder. When the final profile image is ready, it can be stored under assets/profile/ and the hero markup can be updated to display it.

## Main files

- index.html — the complete public website
- 404.html — GitHub Pages 404 page
- assets/ — icons/social preview plus future profile/gallery files
- site.webmanifest — browser/app metadata
- robots.txt — crawler instructions
- sitemap.xml — search-engine sitemap
- .nojekyll — tells GitHub Pages to serve this static site directly
- DEPLOY_TO_GITHUB.md — exact publishing steps
- QUICK_EDIT_GUIDE.txt — simple maintenance notes
- SUPABASE_GALLERY_SETUP.md — next steps for secure Gallery administration

## Safest editing rule

For ordinary text changes, edit only the visible content in index.html. Avoid changing the canvas/morph JavaScript near the bottom unless you intend to redesign the animation.

For larger changes, keep a backup of the current working index.html before replacing it.
