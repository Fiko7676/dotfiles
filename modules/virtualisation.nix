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

  virtualisation.libvirtd.enable = true;

  programs.virt-manager.enable = true;

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

  users.users.finn.extraGroups = ["docker" "kvm" "libvirtd"];

  environment.systemPackages = with pkgs; [
    distrobox
    docker-compose
  ];
}
