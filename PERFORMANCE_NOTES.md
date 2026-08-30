# Rendering performance (v20)

The animated background is an HTML Canvas. v20 decouples the canvas backing resolution from the monitor's physical resolution.

- Pixel budget: about 2.2 million backing pixels.
- Regular page content: native browser resolution.
- Target animation rate: up to ~60 fps.
- Idle behavior: no continuous canvas redraws after the scene settles.
- Glow rendering: layered strokes/circles instead of expensive shadow blurs.

For example, a 3840x2160 CSS viewport now renders the abstract canvas at roughly 1980x1114 internally rather than attempting to paint the full 4K buffer every frame. The browser scales that soft abstract background to the viewport while text and images stay sharp.

No setting is required by the visitor.
