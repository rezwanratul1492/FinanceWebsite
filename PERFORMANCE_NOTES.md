# Performance notes - v21

v21 is tuned for external, high-resolution, and high-refresh-rate monitors while preserving the same morph geometry and overall visual design.

## Changes from v20

- Removed the artificial ~60 FPS canvas cap. `requestAnimationFrame` now follows the display refresh cadence (60/75/120/144/165 Hz, etc.).
- Replaced frame-count-based interpolation with time-based exponential interpolation, so morph speed and damping remain consistent when refresh rate changes or a frame is missed.
- Large displays use a ~1.3 megapixel abstract-background render budget and upscale the result. DOM text, profile imagery, cards, and gallery content stay at native browser resolution.
- On large displays, live CSS `backdrop-filter` blur is replaced with a visually similar opaque-glass treatment to avoid repeated backdrop recomposition during scrolling.
- The secondary full-screen accent bloom is skipped in large-display performance mode; the main atmospheric gradient still carries the scene palette.
- Decorative pointer parallax is disabled in large-display performance mode so tiny mouse movements do not keep the entire canvas rendering.
- The canvas requests a `desynchronized` 2D context when supported and is isolated as its own compositing surface.
- The renderer still goes fully idle when the morph has settled.

## Approximate backing-canvas sizes

- 1920x1080 display: ~1886x1061 background canvas
- 2560x1440 display: ~1520x855 background canvas
- 3840x2160 display: ~1520x855 background canvas
- 3440x1440 ultrawide: ~1762x738 background canvas

These dimensions apply only to the abstract animated background.

## If an external monitor still stutters

At that point the remaining cause is likely outside the page's pixel workload: browser hardware acceleration, which GPU the browser is assigned to, display refresh/VRR settings, cable/dock bandwidth, or mixed-refresh multi-monitor compositing. Test Chrome/Edge hardware acceleration and the monitor's Windows refresh-rate setting before reducing visual quality further.
