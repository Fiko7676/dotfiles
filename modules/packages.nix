{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  programs.firefox.enable = true;
  programs.nix-ld.enable = true;
  programs.htop.enable = true;
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  environment.systemPackages = with pkgs; [
    cargo
    curl
    devenv
    fzf
    gcc
    gh
    home-manager
    jq
    nodejs
    obsidian
    ripgrep
    rustc
    unzip
    uv
    vim
    wget
    zip
  ];
}
