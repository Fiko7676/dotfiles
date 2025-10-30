{
  config,
  inputs,
  pkgs,
  ...
}: let
  wallpaper-dir = "${inputs.wallpaper}/wallpapers";
  wallpaper-state-file = ".wallpaper";

  wallpaper-picker = pkgs.writeShellScript "wallpaper-picker" ''

    relative_file=$(find "${wallpaper-dir}" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" -o -name "*.webp" \) | \
        sort | \
        sed "s|^${wallpaper-dir}/||" | \
        rofi -dmenu -i -p "Select Wallpaper:")

    if [ -n "$relative_file" ]; then
        FULL_PATH="${wallpaper-dir}/$relative_file"

        swww img "$FULL_PATH" \
            --transition-type random\
            --transition-duration 3

        echo "$FULL_PATH" > "${wallpaper-state-file}"
    fi
  '';

  wallpaper-random = pkgs.writeShellScript "wallpaper-random" ''
    WALLPAPER_DIR="${wallpaper-dir}"

    selected_file=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" -o -name "*.webp" \) | \
        shuf -n 1)

    if [ -n "$selected_file" ]; then
        swww img "$selected_file" \
            --transition-type random \
            --transition-duration 3

        echo "$selected_file" > "${wallpaper-state-file}"
    fi
  '';
in {
  home.packages = with pkgs; [
    rofi
  ];

  services.swww.enable = true;

  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mainMod SHIFT, W, exec, ${wallpaper-picker}"
      "$mainMod, W, exec, ${wallpaper-random}"
    ];
  };
}
