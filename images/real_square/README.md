# images/real_square/ — feed-ready versions of the 45 real ads

Derived from `images/real/` (the originals, which stay unmodified) so the REAL arm
matches the AI arms' 1:1 format in the DICE feed. `dice_feed_mixed.csv` points here.

**Rule (one rule for all 45, no manual choices):**

- **Contain, never crop or distort.** Each creative is scaled (Lanczos) so its longer
  side is 1080 px and centred on a 1080 x 1080 canvas. All text, logos and CTAs stay
  fully visible.
- **Padding colour.** Median colour of a thin band 2-5 px inside the creative's edge
  (skipping 1-px frame lines). Used only when that band is uniform (median absolute
  deviation <= 20 on 0-255); otherwise neutral white. Result: 16 edge-colour fills,
  29 white.
- The 6 originals that were already square are only resized.
- Output: baseline JPEG, quality 92, sRGB.

`square_log.csv` records per file: original size and aspect, scale factor, placed
size, fill type and colour.

Source and copyright notes for the creatives: see `images/real/README.md`.
