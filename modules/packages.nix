{pkgs, ...}: {
  programs.firefox.enable = true;
  programs.nix-ld.enable = true;
  programs.htop.enable = true;
  programs.mtr.enable = true;
  programs.git.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  environment.systemPackages = with pkgs; [
    gcc
    home-manager
    vim
    wget
  ];
}
