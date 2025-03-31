{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.bat
    pkgs.curl
    pkgs.fd
    pkgs.fish
    pkgs.fzf
    pkgs.git
    pkgs.httpie
    pkgs.jless
    pkgs.jq
    pkgs.neovim
    pkgs.nixfmt-rfc-style
    pkgs.ripgrep
    pkgs.tig
  ];

  shellHook = ''
    exec fish
  '';
}
