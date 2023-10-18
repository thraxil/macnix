HOSTNAME=aeon

deploy:
	NIXPKGS_ALLOW_UNFREE=1 nix build .#darwinConfigurations.$(HOSTNAME).system --extra-experimental-features 'nix-command flakes'
	NIXPKGS_ALLOW_UNFREE=1 ./result/sw/bin/darwin-rebuild switch --flake .#$(HOSTNAME)
