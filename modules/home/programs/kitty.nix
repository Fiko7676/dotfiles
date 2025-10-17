{pkgs, ...}: {
  programs.kitty = {
    enable = true;
  };

  home.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
