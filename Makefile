HOSTNAME=aeon

.PHONY: deploy
deploy:
	nix build .#darwinConfigurations.$(HOSTNAME).system --extra-experimental-features 'nix-command flakes'
	./result/sw/bin/darwin-rebuild switch --flake .#$(HOSTNAME)


.PHONY: update
update:
	nix flake update

.PHONY: fmt
fmt:
	nix fmt

.PHONY: clean
clean:
	rm -rf result
