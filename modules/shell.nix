{
  environment.shellAliases = {
    nrs = "sudo nixos-rebuild switch --flake /home/finn/dotfiles/.#nixos";
    hms = "home-manager switch --flake /home/finn/dotfiles/.#finn";
  };
}
