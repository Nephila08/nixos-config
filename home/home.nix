{ pkgs, inputs, ... }:

{
    imports = [

	./modules/kitty.nix
	./modules/fish.nix
	./modules/neovim.nix
	./modules/git.nix
	
    ];

    # ------- User Only Packages ------- #
    home.packages = with pkgs; [
	
	# --- Social --- #
	vesktop
	
	# --- Terminal --- #
	fastfetch
	htop

	# --- Fonts --- #
	nerd-fonts.jetbrains-mono
    ];

    # ------- Version ------- #
    home.stateVersion = "26.05";

    home.username = "nephila";
    home.homeDirectory = "/home/nephila";

    programs.home-manager.enable = true;

}
