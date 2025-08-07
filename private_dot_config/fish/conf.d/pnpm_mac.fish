if test -d "$HOME/Library/pnpm"
  set -gx PNPM_HOME "/Users/mrfb/Library/pnpm"
  if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
  end
end
