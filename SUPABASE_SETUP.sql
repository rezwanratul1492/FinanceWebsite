-- Rezwan Finance Website: Gallery database + Row Level Security
-- Run this in Supabase Dashboard -> SQL Editor after creating a PUBLIC Storage bucket named: gallery

create table if not exists public.gallery_items (
  id uuid primary key default gen_random_uuid(),
  storage_path text not null unique,
  caption text,
  sort_order integer not null default 0,
  created_at timestamptz not null default now()
);

alter table public.gallery_items enable row level security;

grant select on public.gallery_items to anon, authenticated;
grant insert, update, delete on public.gallery_items to authenticated;

-- Re-running safely: remove policies first if they already exist.
drop policy if exists "Anyone can view gallery" on public.gallery_items;
drop policy if exists "Rezwan can add gallery items" on public.gallery_items;
drop policy if exists "Rezwan can update gallery items" on public.gallery_items;
drop policy if exists "Rezwan can delete gallery items" on public.gallery_items;

create policy "Anyone can view gallery"
on public.gallery_items for select to public
using (true);

create policy "Rezwan can add gallery items"
on public.gallery_items for insert to authenticated
with check (lower(coalesce(auth.jwt() ->> 'email','')) = 'dr.rezwanfmu@gmail.com');

create policy "Rezwan can update gallery items"
on public.gallery_items for update to authenticated
using (lower(coalesce(auth.jwt() ->> 'email','')) = 'dr.rezwanfmu@gmail.com')
with check (lower(coalesce(auth.jwt() ->> 'email','')) = 'dr.rezwanfmu@gmail.com');

create policy "Rezwan can delete gallery items"
on public.gallery_items for delete to authenticated
using (lower(coalesce(auth.jwt() ->> 'email','')) = 'dr.rezwanfmu@gmail.com');

-- Storage policies. The bucket itself should be PUBLIC and named gallery.
drop policy if exists "Public can view gallery images" on storage.objects;
drop policy if exists "Rezwan can upload gallery images" on storage.objects;
drop policy if exists "Rezwan can update gallery images" on storage.objects;
drop policy if exists "Rezwan can delete gallery images" on storage.objects;

create policy "Public can view gallery images"
on storage.objects for select to public
using (bucket_id = 'gallery');

create policy "Rezwan can upload gallery images"
on storage.objects for insert to authenticated
with check (
  bucket_id = 'gallery'
  and lower(coalesce(auth.jwt() ->> 'email','')) = 'dr.rezwanfmu@gmail.com'
  and lower(storage.extension(name)) in ('jpg','jpeg','png','webp')
);

create policy "Rezwan can update gallery images"
on storage.objects for update to authenticated
using (bucket_id = 'gallery' and lower(coalesce(auth.jwt() ->> 'email','')) = 'dr.rezwanfmu@gmail.com')
with check (bucket_id = 'gallery' and lower(coalesce(auth.jwt() ->> 'email','')) = 'dr.rezwanfmu@gmail.com');

create policy "Rezwan can delete gallery images"
on storage.objects for delete to authenticated
using (bucket_id = 'gallery' and lower(coalesce(auth.jwt() ->> 'email','')) = 'dr.rezwanfmu@gmail.com');
