{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.bat
    pkgs.curl
    pkgs.fd
    pkgs.fzf
    pkgs.git
    pkgs.httpie
    pkgs.jless
    pkgs.jq
    pkgs.neovim
    pkgs.ripgrep
    pkgs.tig
 ];
}
