HOSTNAME=aeon

deploy:
	nix build .#darwinConfigurations.$(HOSTNAME).system --extra-experimental-features 'nix-command flakes'
	./result/sw/bin/darwin-rebuild switch --flake .#$(HOSTNAME)
