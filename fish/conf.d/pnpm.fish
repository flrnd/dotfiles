if test -d "$HOME/.local/share/pnpm"
  set -gx PNPM_HOME "/home/mrfb/.local/share/pnpm"
    if not string match -q -- $PNPM_HOME $PATH
      set -gx PATH "$PNPM_HOME" $PATH
    end
end

