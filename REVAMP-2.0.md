# Waffle Cat 2.0 Brief

## Direction

Waffle Cat 2.0 should stop reading like a broad orange-themed anime pack and start reading like one specific sensory world.

Target lane:

- sunny breakfast warmth
- buttered syrup waffles
- honey-gold window light
- soft wood and ceramic surfaces
- cream highlights
- coffee warmth
- a slight crispness in the air
- warm tabby companionship

The goal is not "more cat."
The goal is "a calm warm place that clearly belongs to Waffle Cat."

## Creative Rules

- One dominant accent: honey amber.
- One neutral family: syrup brown to toasted mocha.
- Support colors stay subordinate and should not become co-leads.
- The cat is atmospheric, not mascot-first.
- Images should feel like they come from the same warm domestic world.
- The shell should feel soft and mature, not playful and loud.
- Daylight comfort comes first; duskier images are supporting variation, not the thesis.
- Avoid any palette move that turns the theme dry, dusty, desert-like, or savannah-coded.

## Palette System

Use `colors.toml` as the canonical source.

Named roles for 2.0:

- `background`: dark syrup, almost chocolate
- `surface-1`: roasted coffee
- `surface-2`: toasted waffle
- `surface-3`: soft ceramic or warm inactive shell
- `accent`: syrup amber
- `accent-soft`: butter gold
- `text`: cream
- `text-muted`: oat / milk tea
- `danger`: muted rust
- `support`: one restrained freshness note only when needed, not as a primary accent

Hard rule:

- do not use cyan or icy tones as a visible first-class accent in shell surfaces
- do not let multiple vivid ANSI colors become equally important in the UI
- do not let midtone ochres and olive notes dominate so strongly that the theme reads arid

## Wallpaper Strategy

The final six-image set is much stronger than the original pack. The 2.0 job now is to treat it as one warm, breakfast-adjacent world with a little softer mood variation.

### Core Wallpapers

These most directly express the theme:

- `backgrounds/1-golden-lattice.jpg`
- `backgrounds/3-lakeside-camp.jpg`
- `backgrounds/4-winter-bokeh-cat.jpg`
- `backgrounds/6-morning-flow.jpg`

### Supporting Wallpapers

These still belong, but should be treated as softer side-notes rather than the whole thesis:

- `backgrounds/2-rust-panic.jpg`
- `backgrounds/5-stillwater-spirit.jpg`

Within the current six, `backgrounds/2-rust-panic.jpg` is still the biggest style outlier and should be watched during preview and README work.

## Palette Revamp Note

The current palette is coherent but still leaning too dry. The next color pass should push it away from desert/savannah cues and toward:

- coffee brown
- maple syrup
- toasted waffle
- melted butter
- cream
- bright morning sunlight
- one subtle crisp-air note

## Shell Targets

### Waybar

Waybar should feel like a warm object sitting over the wallpaper, not a collection of colorful capsules.

Targets:

- fewer competing highlight colors
- stronger hierarchy through surface tone, not rainbow module coloring
- active workspace uses the syrup accent
- inactive elements use muted cream and rose-brown
- modules should read as one family of materials
- keep rounded language, but less novelty

### Hyprland

Targets:

- softer and more restrained border language
- subtle active emphasis instead of flashy gradients
- blur and shadow should feel warm and low-contrast
- avoid high-sheen or neon framing

### GTK / Aether

Targets:

- cream text on syrup grounds
- syrup-gold as the default interactive accent
- mauve only as a low-volume support note
- cards, entries, and buttons should feel sun-warmed and soft-edged

### Walker / Mako / OSD

Targets:

- consistent corner rhythm with the rest of the shell
- quieter hover and selection treatments
- borders should be amber or toasted, never bright green-yellow
- use glow sparingly and only when it reinforces warmth

## Preview Direction

The preview should be rebuilt around the real Waffle Cat concept, not a moody reinterpretation.

Preview composition goals:

- one hero wallpaper from the final six-image set
- shell surfaces framed clearly against it
- less visual clutter
- stronger separation between wallpaper art and interface chrome
- the theme should read as "sunny, syrupy, and deliberate" in one glance

## 2.0 Smell Test

Before calling any later pass "done," check these:

- Does the theme still work if the cat is removed from the image?
- Does the shell still feel like Waffle Cat without cyan or novelty accents?
- Do the wallpapers look like the same warm domestic world?
- Is the warm mood coming from materials and lighting, not just orange values?
- Does the bar look designed, or merely decorated?

If any answer is no, the revamp is not finished.

## Recommended Next Steps

1. Rebuild `preview.png` around one hero wallpaper from the final six-image set.
2. Continue palette cleanup through the remaining app-specific theme files.
3. Rewrite `README.md` to describe the tighter 2.0 concept instead of the broader 1.x vibe pack.
4. Keep `backgrounds/2-rust-panic.jpg` as the set's deliberate high-energy counterpoint.
