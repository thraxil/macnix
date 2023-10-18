{pkgs, ...}: {
  nix.settings.experimental-features = ["nix-command" "flakes"];

  nixpkgs.config.allowUnfree = true;

  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;
  programs.nix-index.enable = true;
}
