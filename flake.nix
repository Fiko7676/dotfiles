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

    # Zen browser
    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixos-hardware,
    nixvim-config,
    zen-browser,
    ...
  } @ inputs: let
    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;

      modules = [
        ./hardware.nix
        ./modules/bootloader.nix
        ./modules/hardware.nix
        ./modules/locales.nix
        ./modules/network.nix
        ./modules/nix.nix
        ./modules/packages.nix
        ./modules/services.nix
        ./modules/shell.nix
        ./modules/users.nix

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
        # CORRECTED LINE: Changed 'homeModules' to 'homeManagerModules'
        ./home-manager/home.nix
      ];
    };
  };
}
