{
  pkgs,
  inputs,
  ...
}: {
  home.stateVersion = "25.05";

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./gnome.nix
    ./shell.nix

    ./programs/browser.nix
    ./programs/gemini.nix
    ./programs/git.nix
    ./programs/kitty.nix
    ./programs/vesktop.nix
  ];

  programs.home-manager.enable = true;
}
