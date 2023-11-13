if test -d "$HOME/.asdf"
  source "$HOME/.asdf/asdf.fish"
  if ! test -L "$HOME/.config/fish/completions/asdf.fish"
    ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
  end

  if test -d "$HOME/.asdf/plugins/golang"
    source "$HOME/.asdf/plugins/golang/set-env.fish"
  end
end
