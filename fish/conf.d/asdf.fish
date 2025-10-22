if test -d "$HOME/.local/share/asdf/asdf.fish"
    source "$HOME/.local/share/asdf/asdf.fish"
    if ! test -L "$HOME/.config/fish/completions/asdf.fish"
        ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
    end

    if test -d "$HOME/.local/share/asdf/plugins/golang"
        source "$HOME/.local/share/asdf/plugins/golang/set-env.fish"
    end
end

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
