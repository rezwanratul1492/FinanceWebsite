## v18 profile-image fix
The hero profile image is embedded directly in `index.html`, so it cannot break because of a missing relative asset path. The separate WebP asset remains included as a backup/source file.

# Md Rezwan H Ratul — Finance Website (v17)

GitHub Pages release for: https://rezwanratul1492.github.io/FinanceWebsite/

## Included
- Colorful scroll-morphing Canvas background
- About, Experience, Research + working papers, Teaching, Academic Service, Awards, Hobbies, Gallery, Contact
- Optimized profile photo in `assets/profile/rezwan-profile.webp`
- Horizontal Gallery stream
- Supabase-powered admin for profile photo and Gallery login/upload/edit/reorder/delete interface
- SEO/social metadata, favicon, 404 page, sitemap and robots.txt

## Gallery backend
Before Gallery uploads work, complete `SUPABASE_GALLERY_SETUP.md` and run `SUPABASE_SETUP.sql` in your Supabase project.

## Performance changes in v17
- Profile image is a ~web-optimized WebP rather than the original large JPEG.
- Supabase JavaScript is loaded dynamically only after the main page has loaded.
- Canvas DPR is adaptively capped on very large/high-DPI screens.
- Very large screens render the animation around 45 fps instead of doing unnecessary 60 fps work.
- Gallery uploads are resized/compressed client-side before upload.


## Profile photo management
After signing in through Gallery > Admin, use **Update profile photo**. The photo is stored at `gallery/profile/current.webp` in Supabase Storage and automatically overrides the embedded fallback portrait. No GitHub edit is needed for future profile-photo changes.

## v20 rendering performance

The morphing canvas now uses adaptive resolution with a fixed ~2.2 megapixel backing-store budget, regardless of monitor resolution. The page UI, text, profile photo, and gallery remain at native browser resolution.

Additional v20 optimizations:
- morph rendering stops completely when scroll/parallax motion has settled;
- animation is capped near 60 fps even on 120/144 Hz monitors;
- expensive canvas shadowBlur effects were replaced with layered strokes/circles;
- one redundant full-screen light gradient was removed;
- the decorative noise blend layer is automatically disabled only on very large displays.

These changes are designed to preserve the same visible morph shapes and color transitions while reducing GPU/CPU work on 1440p, 4K, ultrawide, Retina, and larger displays.
