if test -d "$HOME/.local/share/asdf/asdf.fish"
  source "$HOME/.local/share/asdf/asdf.fish"
  if ! test -L "$HOME/.config/fish/completions/asdf.fish"
    ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
  end

  if test -d "$HOME/.local/share/asdf/plugins/golang"
    source "$HOME/.local/share/asdf/plugins/golang/set-env.fish"
  end
end

if test -d "/opt/homebrew/opt/asdf"
  source /opt/homebrew/opt/asdf/libexec/asdf.fish
end
