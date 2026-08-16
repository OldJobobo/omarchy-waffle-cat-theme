# Repository Guidelines

## Project Structure & Module Organization

This repository is an Omarchy theme pack, not an application. Root-level files are the shipped theme assets for individual targets such as `hyprland.conf`, `waybar.css`, `gtk.css`, `kitty.conf`, `ghostty.conf`, `vencord.theme.css`, and `zed.json`. Shared palette sources live in `colors.toml` and `palette/`. Wallpapers live in `backgrounds/`, and Waybar's split configuration lives in `waybar-theme/config.jsonc` and `waybar-theme/style.css`. Use `README.md` for install-facing docs and `DESIGN.md` or `REVAMP-2.0.md` for design intent.

## Build, Test, and Development Commands

There is no compile step or automated test suite in this repo. The useful commands are:

```bash
git status --short
rg --files
omarchy-theme-install https://github.com/OldJobobo/omarchy-waffle-cat-theme
```

`git status --short` shows the exact files touched by a palette pass. `rg --files` is the fastest way to audit targets before editing. `omarchy-theme-install ...` is the real integration check on an Omarchy machine; use it to confirm the theme applies cleanly after changes.

## Coding Style & Naming Conventions

Keep existing file formats and conventions intact: CSS uses concise selectors and grouped variables, TOML/INI stays flat and readable, and JSON/JSONC should preserve stable key ordering when possible. Use 2-space indentation for CSS, JSON, and JSONC; preserve the style already present in config formats that do not follow that pattern. Name wallpapers with a numeric prefix and descriptive slug, for example `backgrounds/17-winter-bokeh-cat.png`.

Treat `colors.toml` as the canonical palette source. When changing colors, propagate the same intent across shell, app, and editor theme files instead of making one-off exceptions.

## Testing Guidelines

Testing is manual. Verify that changed files still load in their target apps and that the theme remains visually coherent against at least one wallpaper in `backgrounds/`. For broad palette edits, check Waybar, Hyprland, GTK, one terminal, and one editor theme before opening a PR.

## Commit & Pull Request Guidelines

Recent history favors short, imperative subjects with scope when useful, such as `gtk: set headerbar/card background colors to @background` or `Rename background files with vibey content slugs`. Keep commits focused by surface or concern.

PRs should include a brief summary, list of touched targets, and updated screenshots when visuals change. If wallpapers, previews, or install docs change, update `README.md` in the same PR.
