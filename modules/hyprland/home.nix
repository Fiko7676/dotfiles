{pkgs, ...}: {
  imports = [
    ./programs/hypridle.nix
    ./programs/hyprshot.nix
    ./programs/lockscreen.nix
    ./programs/rofi.nix
    ./programs/swww.nix
    ./config/appearance.nix
    ./config/keybinds.nix
    ./config/env.nix
    ./config/input.nix
    ./config/layout.nix
    ./config/misc.nix
    ./config/windowrules.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
    config = {
      common.default = ["hyprland" "gtk"];
    };
  };
}
