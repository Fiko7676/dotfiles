{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;

    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/dotfiles/.#nixos";
      hms = "home-manager switch --flake ~/dotfiles";

      v = "nvim";
      vim = "nvim";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
      ];
      theme = "robbyrussell";
    };
  };
}
