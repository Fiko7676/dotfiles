{
  description = "NixOS Dotfiles";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };

    nixvim-config = {
      url = "path:/home/finn/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixos-hardware,
    nixvim-config,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;

      modules = [
        ./hardware.nix
        ./modules/bootloader.nix
        ./modules/gaming.nix
        ./modules/hardware.nix
        ./modules/helper.nix
        ./modules/locales.nix
        ./modules/network.nix
        ./modules/nix.nix
        ./modules/packages.nix
        ./modules/services.nix
        ./modules/shell.nix
        ./modules/users.nix
        ./modules/virtualisation.nix

        nixos-hardware.nixosModules.lenovo-thinkpad-t490s
      ];
    };

    homeConfigurations.finn = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      extraSpecialArgs = {
        inherit inputs;
      };

      modules = [
        {
          home.username = "finn";
          home.homeDirectory = "/home/finn";
        }
        nixvim-config.homeModules.default
        ./home-manager/home.nix
      ];
    };
  };
}
