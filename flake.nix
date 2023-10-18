{
  description = "Nix for macOS configuration";

  nixConfig = {
    experimental-features = ["nix-command" "flakes"];
  };

  inputs = {
    nixpkgs-darwin.url = "github:nixos/nixpkgs/nixpkgs-23.05-darwin";
    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs-darwin";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    darwin,
    ...
  }: {
    darwinConfigurations.aeon = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [
        ./modules/nix-core.nix
        ./modules/system.nix
        ./modules/apps.nix
      ];
    };

    formatter.aarch64-darwin = nixpkgs.legacyPackages.aarch64-darwin.alejandra;
  };
}
