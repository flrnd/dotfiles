#!/usr/bin/env bash

EDITOR="nvim"

PATH_USER=(
  "$HOME/bin"
  "$HOME/.local/bin"
)

GO_PATH="$HOME/go"
RUST_PATH="$HOME/.cargo/bin"
PNPM_PATH="$HOME/.local/share/pnpm"
BREW_PATH="/home/linuxbrew/.linuxbrew"

# ----------------------------
# Bash primitives
# ----------------------------

emit_bash_set() {
  printf 'export %s=%s\n' "$1" "$2"
}

emit_bash_path() {
  local dir="$1"
  local template="$2"
  local check="$3"

  local condition=""
  if [ "$check" = "dir" ]; then
    condition="[ -d \"$dir\" ] && "
  fi

  local rendered
  rendered=$(printf "$template" "$dir")

  printf '%scase ":$PATH:" in *":%s:"*) ;; *) PATH="%s";; esac\n' \
    "$condition" "$dir" "$rendered"
}

# ----------------------------
# Fish primitives
# ----------------------------

emit_fish_set() {
  printf 'set -gx %s %s\n' "$1" "$2"
}

emit_fish_path() {
  local dir="$1"
  local mode="$2"
  local check="$3"

  if [ "$check" = "dir" ]; then
    printf 'if test -d %s; and not contains %s $PATH\n' "$dir" "$dir"
  else
    printf 'if not contains %s $PATH\n' "$dir"
  fi

  if [ "$mode" = "prepend" ]; then
    printf '    set -gx PATH %s $PATH\n' "$dir"
  else
    printf '    set -gx PATH $PATH %s\n' "$dir"
  fi

  printf 'end\n'
}

# ----------------------------
# Shared logic
# ----------------------------

emit_common_paths() {
  for p in "${PATH_USER[@]}"; do
    path_prepend "$p"
  done
}

emit_toolchains() {
  # go
  [ -d "$GO_PATH" ] && set_var GOPATH "$GO_PATH"
  path_append_if_dir "$GO_PATH/bin"

  # rust
  path_append_if_dir "$RUST_PATH"

  # pnpm
  path_append_if_dir "$PNPM_PATH"
}

# ----------------------------
# Bash renderer
# ----------------------------

emit_bash() {
  path_prepend() { emit_bash_path "$1" '%s:$PATH'; }
  path_append_if_dir() { emit_bash_path "$1" '$PATH:%s' dir; }
  set_var() { emit_bash_set "$1" "$2"; }

  emit_bash_set EDITOR "$EDITOR"

  # brew (idempotent)
  printf '[ -x "%s" ] && case ":$PATH:" in *":%s/bin:"*) ;; *) eval "$(%s shellenv)";; esac\n' \
    "$BREW_PATH/bin/brew" "$BREW_PATH" "$BREW_PATH/bin/brew"

  emit_common_paths
  emit_toolchains
}

# ----------------------------
# Fish renderer
# ----------------------------

emit_fish() {
  path_prepend() { emit_fish_path "$1" prepend; }
  path_append_if_dir() { emit_fish_path "$1" append dir; }
  set_var() { emit_fish_set "$1" "$2"; }

  emit_fish_set EDITOR "$EDITOR"

  # brew (idempotent + correct shell output)
  printf 'if test -x %s; and not contains %s/bin $PATH\n' "$BREW_PATH/bin/brew" "$BREW_PATH"
  printf '    eval (%s shellenv fish)\n' "$BREW_PATH/bin/brew"
  printf 'end\n'

  emit_common_paths
  emit_toolchains
}

# ----------------------------
# Entry point
# ----------------------------

case "$1" in
bash) emit_bash ;;
fish) emit_fish ;;
*)
  printf 'usage: %s [bash|fish]\n' "$0" >&2
  exit 1
  ;;
esac
