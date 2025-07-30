if test -e /opt/homebrew/bin/brew
    eval "$(/opt/homebrew/bin/brew shellenv)"
end

if test -e /home/linuxbrew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end
