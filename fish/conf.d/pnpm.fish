if test -d "$HOME/.local/share/pnpm"
  set -gx PNPM_HOME "/home/mrfb/.local/share/pnpm"
  set -gx PATH "$PNPM_HOME" $PATH
end

