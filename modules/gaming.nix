{pkgs, ...}: {
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      intel-ocl
      intel-vaapi-driver
      mesa
      vulkan-loader
      vulkan-tools
      vulkan-validation-layers
    ];
  };

  programs.gamescope.enable = true;

  security.wrappers.gamescope = {
    source = "${pkgs.gamescope}/bin/gamescope";
    owner = "root";
    group = "root";
    capabilities = "cap_sys_nice+p";
  };

  programs.gamemode.enable = true;
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };

  environment.systemPackages = with pkgs; [
    heroic
    intel-media-driver
    prismlauncher
    wine
    zlib
  ];
}
