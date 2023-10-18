# nix configuration for my work mac

Largely based on examples from https://github.com/ryan4yin/nix-darwin-kickstarter/

my opinionated changes:

1. I still want a pretty minimal setup. I don't want a lot of packages
   installed that I'm not going to use. I don't want a lot of
   customizations to the environment (I prefer to keep it reasonably
   close to defaults).
2. I prefer nix to brew for managing packages whenever possible. The
   only brew installed stuff is packages that currently don't work
   right with nix.
3. I'm not really a big fan of home manager, and prefer other
   approaches to managing dotfiles, etc.

To use this:

* clone it
* make sure you have nix and homebrew installed (default instructions
  on the web should work for those)
* change the hostname in `flake.nix` and `Makefile` (mine is called
  `aeon`)
* change any settings in `modules/system.nix` or `modules/apps.nix` to
  your liking.
* run `make deploy` to install it.
