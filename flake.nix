{
    description = "NixOS Config ^v^";

    # ------- Inputs ------- #
    inputs = {

	# --- NixPkgs --- #
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

	# --- Home Manager --- #
	home-manager = {

	    url = "github:nix-community/home-manager/release-26.05";
	    inputs.nixpkgs.follows = "nixpkgs";
	};

	# --- NixVim --- #
	nixvim = {

	    url = "github:nix-community/nixvim";
	    inputs.nixpkgs.follows = "nixpkgs";
	};
    };

    # ------- Outputs ------- #
    outputs = inputs @ { self, nixpkgs, home-manager, nixvim, ... }: {

	nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {

	    system = "x86_64-linux";
	    specialArgs = { inherit inputs; };

	    modules = [

		./system/configuration.nix

		home-manager.nixosModules.home-manager
		{

		    home-manager.useGlobalPkgs = true;
		    home-manager.useUserPackages = true;
		    home-manager.extraSpecialArgs = { inherit inputs; };
		    home-manager.users.nephila = import ./home/home.nix;
		}
	    ];
	};
    };
}
