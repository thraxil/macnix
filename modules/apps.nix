{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    direnv
    emacs29
    gh
    git
    google-cloud-sdk
    gnupg
    htop
    jira-cli-go
    nodejs # for copilot
    postgresql
    tree
    vscode
    wget
    yubikey-manager
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
       "openssh"
    ];

    # `brew install --cask`
    casks = [
      "firefox"
      "google-chrome"
      "zoom"
    ];
  };
}
