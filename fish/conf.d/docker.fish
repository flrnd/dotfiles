if test -d "$HOME/.docker/bin"
  set -gx PATH "$HOME/.docker/bin" $PATH
  set -gx DOCKER_HOST=unix:///run/user/1000/docker.sock
end
