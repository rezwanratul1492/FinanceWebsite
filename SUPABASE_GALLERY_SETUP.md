# Supabase Gallery setup (v17)

The website already contains the project URL and **publishable** key. No secret/service-role key is used in the browser.

## One-time setup

1. Supabase Dashboard -> **Authentication -> Users**: create/invite `dr.rezwanfmu@gmail.com` and set a strong password.
2. Authentication -> Providers -> Email: if only you should have an account, disable public sign-ups after your user exists.
3. Storage -> **New bucket** -> name it exactly `gallery` -> make it **Public**.
4. SQL Editor -> New query -> paste the full contents of `SUPABASE_SETUP.sql` -> Run.
5. Authentication -> URL Configuration:
   - Site URL: `https://rezwanratul1492.github.io/FinanceWebsite/`
   - Redirect URL: add the same URL.
6. Publish the GitHub files.

## Test

Open the live website -> Gallery -> Admin -> sign in.
You should then see upload, reorder, edit-caption, and delete controls.

The browser resizes uploaded images to a maximum dimension of 1600 px and WebP quality ~84% before upload, which keeps Gallery loading much faster.

## Security

- The publishable key in `index.html` is intended for browser use.
- Never put a Supabase `service_role` / secret key in GitHub or the website.
- RLS policies in `SUPABASE_SETUP.sql` enforce that only `dr.rezwanfmu@gmail.com` can change gallery data/files.
