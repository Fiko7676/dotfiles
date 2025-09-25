{
  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    auto-optimise-store = true;
    warn-dirty = true;
  };
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 14d";
  };

  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
    flake = "$HOME/dotfiles/.#nixos";
  };

  system.stateVersion = "25.05";
}
