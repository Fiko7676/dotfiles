{
  pkgs,
  inputs,
  ...
}: {
  home.stateVersion = "25.05";

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./programs/gemini.nix
    ./programs/gnome.nix
    ./programs/git.nix
    ./programs/kitty.nix
    ./programs/tmux.nix
    ./programs/vesktop.nix
    ./programs/zsh.nix

    ../hyprland/home.nix
  ];

  programs.home-manager.enable = true;

  programs.nixvim = import ../nixvim/default.nix;
}
