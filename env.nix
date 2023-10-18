let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/31ed632c692e6a36cfc18083b88ece892f863ed4.tar.gz") {};
in [
   pkgs.direnv
   pkgs.emacs
   pkgs.git
   pkgs.htop
   pkgs.vscode
   pkgs.postgresql
   pkgs.gh
   pkgs.wget
]