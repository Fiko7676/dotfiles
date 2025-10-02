{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

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
    cargo
    gcc
    home-manager
    nodejs
    obsidian
    ripgrep
    rustc
    uv
    vim
    wget
  ];
}
