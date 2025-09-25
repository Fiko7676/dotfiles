{pkgs, ...}: {
  programs.zsh.enable = true;

  users.users = {
    finn = {
      isNormalUser = true;
      description = "Finn";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
      shell = pkgs.zsh;
      packages = with pkgs; [
      ];
    };
  };
}
