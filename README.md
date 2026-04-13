# Dotfiles (public snapshot)

This repository is a **public snapshot** of my dotfiles.

My actual setup is managed privately using chezmoi in a self-hosted Forgejo Git repo. This repo exists mostly as a reference, a backup, and—let’s be honest—because sharing dotfiles is part of the culture.

---

## What this is

- A **copy** of my configuration at various points in time
- A place to share ideas, patterns, and experiments
- Occasionally useful, sometimes outdated

---

## What this is NOT

- The source of truth for my system
- Guaranteed to be up-to-date
- A polished or curated “perfect setup”

Some files here are **relics** from past setups. I keep them around for context and because they might still be useful to someone.

---

## Current approach (high level)

These days I keep things simple:

- **Environment** is generated from a single script (`shell/env.sh`)
- **Shell ergonomics** are separated per shell (Fish / Bash)
- **Editor tooling** is handled by the editor (Neovim + Mason), not the shell
- No heavy frameworks, no startup side effects

The goal is:

> predictable, minimal, and easy to reason about

---

## Why share this?

Because this is what nerds do.

Also:

- you might find something useful
- I might find something useful later
- it’s nice to see how setups evolve over time

---

## Disclaimer

If you copy things from here, do it selectively.
This repo is more of a **journal** than a finished product.

---

## Closing note

Yes, this is partially:

> _“look at my dotfilezzzz”_

…but hopefully also something practical.
