{
  wayland.windowManager.hyprland.settings = {
    monitor = ",1920x1080@60,0x0,1";

    "$terminal" = "kitty";
    "$fileManager" = "dolphin";
    "$menu" = "rofi -show drun";

    env = [
      "XCURSOR_SIZE,24"
      "HYPRCURSOR_SIZE,24"
    ];
  };
}
