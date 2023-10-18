{pkgs, ...}: {
  system = {
    activationScripts.postUserActivation.text = ''
      /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
    '';

    defaults = {
      menuExtraClock.Show24Hour = true; # show 24 hour clock

      NSGlobalDomain = {
        "com.apple.sound.beep.feedback" = 0;
      };
      CustomUserPreferences = {
        NSGlobalDomain = {
	  WebKitDeveloperExtras = true;
        };
	"com.apple.desktopservices" = {
          # Avoid creating .DS_Store files on network or USB volumes
          DSDontWriteNetworkStores = true;
          DSDontWriteUSBStores = true;
        };
	"com.apple.screensaver" = {
          # Require password immediately after sleep or screen saver begins
          askForPassword = 1;
          askForPasswordDelay = 0;
        };
	"com.apple.screencapture" = {
          location = "~/Desktop";
          type = "png";
        };
	"com.apple.AdLib" = {
          allowApplePersonalizedAdvertising = false;
        };
	"com.apple.ImageCapture".disableHotPlug = true;
      };
    };
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToControl = false;
    };
  };

  # Add ability to used TouchID for sudo authentication
  security.pam.enableSudoTouchIdAuth = true;

  # Create /etc/zshrc that loads the nix-darwin environment.
  # this is required if you want to use darwin's default shell - zsh
  programs.zsh.enable = true;
}
