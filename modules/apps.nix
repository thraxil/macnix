{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    direnv
    emacs
    gh
    git
    google-cloud-sdk
    gnupg
    htop
    postgresql
    tree
    vscode
    wget
  ];

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
    };

    taps = [
      "homebrew/cask"
      "homebrew/cask-fonts"
      "homebrew/services"
      "homebrew/cask-versions"
    ];

    # `brew install`
    brews = [
    ];

    # `brew install --cask`
    casks = [
      "firefox"
      "google-chrome"
      "zoom"
    ];
  };
}
