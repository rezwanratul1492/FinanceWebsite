# Supabase Gallery integration — not yet activated

The current website already contains:

- Gallery section
- horizontal photo stream
- left/right controls
- Admin button
- login dialog
- fixed authorized email: dr.rezwanfmu@gmail.com

What is intentionally NOT stored in GitHub:

- admin password
- database password
- Supabase secret key
- service_role key

## When you are ready to activate Gallery Admin

Create/configure the Supabase project, then provide only:

1. Project URL
2. Publishable key (or legacy anon public key)

The browser may contain the publishable key. Security must be enforced by Supabase Auth + Row Level Security.

The final integration will support:

- secure sign-in
- upload one or multiple photos
- captions
- delete photos
- reorder photos
- visitor-only viewing
- horizontal Gallery navigation

Do not add the Supabase service_role key to GitHub Pages.
