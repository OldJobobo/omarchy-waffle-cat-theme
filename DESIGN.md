# Waffle Cat 2.0 Design

## Core Idea

Waffle Cat is a comfort theme.

Its identity comes from the feeling of butter melting into a fresh waffle near a bright window, with syrup warmth, soft tabletop browns, cream highlights, and the presence of a warm tabby nearby.

This is not a neon theme, not a gothic cozy theme, and not a pure pastel theme.
It should feel edible, domestic, relaxed, and gently sunlit.
It should also carry a slight crispness in the air: a bright morning with a little chill outside, balanced by warmth from sunlight, waffles, and coffee.

## Emotional Target

The theme should evoke:

- a slow breakfast
- warm sunlight through curtains or kitchen windows
- maple syrup and toasted batter
- a cup of coffee warming your hands
- ceramic mugs and wooden tables
- a cat choosing the warmest spot in the room

It should feel:

- cozy
- warm
- bright
- soft
- homey
- lightly playful
- calm rather than dramatic
- sun-warmed rather than sun-baked

It should not feel:

- nocturnal-first
- cyberpunk
- sugary-cute
- aggressively orange
- desert
- savannah
- dusty
- dry
- neon
- spooky
- chaotic

## Visual Thesis

The theme succeeds when the desktop feels like a breakfast nook translated into UI materials.

That means:

- dark browns act like syrup, toasted crust, and shadow
- golds act like butter, sunlight, and glaze
- cream acts like foam, plate glaze, and reflected light
- coffee browns add roasted depth
- any coolness should read as crisp air or ceramic restraint, not as a second aesthetic
- rust and support tones are minor seasoning notes, not the main meal

The color system should feel edible before it feels technical.

## Color Roles

### Primary

- `background`: dark syrup brown
- `surface`: roasted coffee / espresso brown
- `surface-alt`: waffle crust / toasted batter brown
- `text`: cream
- `accent`: maple-honey gold
- `accent-soft`: butter yellow
- `highlight`: bright morning light

### Secondary

- `muted`: oat, milk-tea, soft ceramic taupe
- `danger`: muted rust or jam-like red-brown
- `support`: one restrained cool or neutral note used sparingly for freshness and air

### Excluded Tendencies

- bright cyan should not become a major shell accent
- acidic yellow-green should not dominate borders or highlights
- cool gray should not flatten the warmth of the palette
- sage or olive should never become strong enough to suggest scrubland, savannah, or dusty foliage
- midtone ochres should not dominate so hard that the palette reads dry instead of buttery

## Wallpaper World

The six-wallpaper set is one warm visual family rather than a broad orange or anime collection. All shipped wallpapers are optimized progressive JPEGs.

### Current Set

- `1-golden-lattice.jpg`: the clearest hero image and strongest breakfast-world statement
- `2-rust-panic.jpg`: the deliberate high-energy counterpoint and largest stylistic outlier
- `3-lakeside-camp.jpg`: a quiet outdoor extension of the comfort theme
- `4-winter-bokeh-cat.jpg`: the strongest tabby-companionship image
- `5-stillwater-spirit.jpg`: a softer, reflective supporting mood
- `6-morning-flow.jpg`: the clearest bright-morning and workspace image

Preferred characteristics:

- warm daylight or soft golden-hour light
- wood, cloth, steam, foliage, ceramic, syrup, waffles, coffee, and domestic interiors
- characters or cats that reinforce comfort instead of spectacle
- outdoor scenes that remain mellow and warm rather than epic or dramatic

The set may include softer dusk-adjacent or energetic supporting images, but sunny breakfast warmth remains the thesis. Hard sci-fi, horror, candy-pastel worlds, and spectacle-first imagery do not belong.

## Shell Language

The shell should feel like a crafted object, not a novelty theme pack.

### Shape

- rounded, but not bubbly
- soft corners with restraint
- pills are acceptable, but should not make everything look toy-like

### Contrast

- medium contrast overall
- enough clarity for legibility
- avoid black-versus-neon extremes

### Texture

- visually soft
- slightly glazed, sun-warmed, or upholstered feeling
- restrained blur
- warm shadows instead of hard graphic drama
- avoid dusty, chalky, or arid surface reads

### Accent Use

- accent is for focus, selection, and a few hero moments
- most of the interface should be carried by neutrals and cream text
- support colors should appear rarely and intentionally

## Surface-by-Surface Intent

### Bar System

The native Quattro bar should feel like a warm tray resting over the wallpaper. `shell.toml` is the primary implementation; `waybar.css` carries the same intent for Omarchy 3.8 compatibility.

Goals:

- one unified material family
- low visual noise
- a confident syrup-amber active state
- hierarchy through surface tone rather than module-by-module color chatter

### Hyprland Borders

`hyprland.lua` is the native Quattro implementation, with `hyprland.conf` retained as the Omarchy 3.8 mirror. Borders should feel warm and understated.

Goals:

- an amber-to-cream active gradient that is visible but not flashy
- a soft rose-brown inactive border
- restrained blur and rounded geometry
- shadows that deepen warmth rather than drama

### GTK / Aether

App chrome should feel comfortable and readable.

Goals:

- cream text on warm dark surfaces
- amber interaction color
- gentle layering
- no accidental cool-tech look

### Launcher / Notifications / OSD

These should feel like the same object family as the bar. Quattro surfaces are defined in `shell.toml`; Walker, Mako, and SwayOSD preserve the translation for Omarchy 3.8.

Goals:

- consistent corner logic
- coherent amber-to-cream border language
- quiet cream-tinted hover and selection states
- warm translucency with enough opacity for reliable readability

## Theme Personality

If Waffle Cat were described as a place rather than a palette, it would be:

- a kitchen table in morning light
- a cafe corner with a waffle and tea
- a wooden desk warmed by sun
- a cat loafing nearby while you work

If it were described as food, it would be:

- butter
- syrup
- toasted batter
- coffee
- cinnamon
- cream

That is the personality the UI should preserve.

## Design Guardrails

Before approving any new wallpaper, CSS tweak, or palette change, ask:

- Does this make the theme feel more like breakfast warmth?
- Does this feel like a bright morning rather than a dry afternoon?
- Does this support the butter-syrup-tabby idea?
- Does this read like coffee, cream, butter, maple, ceramic, or sunlight rather than dust, straw, or scrubland?
- Is this color adding comfort, or just adding variety?
- Is this surface more intentional, or just more decorated?
- Would this still feel like Waffle Cat without relying on literal cat imagery?

If the answer is no, the change is probably off-direction.

## Current Palette Resolution

`colors.toml` is the canonical source for both Quattro semantic roles and the legacy ANSI palette. The 2.0 palette resolves the material system as follows:

- dark syrup background: `#292025`
- roasted coffee surface: `#362d30`
- toasted inactive/selection surface: `#6b5650`
- maple-honey accent: `#c87d2a`
- waffle and glaze gold: `#c8964b`
- butter highlight: `#e4c56d`
- cream text: `#fff4d8`
- morning-light highlight: `#fffaf0`
- oat/milk-tea muted text: `#a58c82`
- jam-rust danger: `#cf7358`
- crisp ceramic-air support: `#9eb8b2`

Green, cyan, rose, and rust remain necessary semantic and ANSI colors, but they are supporting notes rather than shell co-leads. The amber accent, coffee surfaces, and cream text must dominate normal desktop use.

### Success Criteria

- the palette reads breakfast rather than desert
- warmth feels soft and edible rather than dry or sandy
- coffee, syrup, waffle, butter, and cream remain separately legible
- the cool support note suggests crisp air or ceramic glaze without making the theme cold
- normal and bright terminal colors remain visibly ordered
- no semantic support color steals focus from the breakfast core

## Current 2.0 Priorities

1. Smoke-test the theme through a clean Omarchy 4 / Quattro install and theme switch.
2. Verify the native shell, Hyprland, Foot, one editor, and generated application overrides against the final palette.
3. Keep the preview, README, and six-wallpaper inventory synchronized with any final changes.
4. Preserve the Omarchy 3.8 compatibility files as a coherent translation of the Quattro design.
