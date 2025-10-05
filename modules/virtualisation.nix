{pkgs, ...}: {
  virtualisation = {
    containers.enable = true;
    docker = {
      rootless = {
        enable = true;
        setSocketVariable = true;
      };
    };
  };

  programs.nix-ld.enable = true;

  users.users.finn.extraGroups = ["docker"];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
