{ pkgs, ... }:

{
    # ------- Fish ------- #
    programs.fish = {

	enable = true;

	# --- Aliases --- #
	shellAliases = {

	    # - Nix - #
	    rebuild = "sudo nixos-rebuild switch --flake ~/nixos-config#nixos";
	    update = "sudo nix flake update ~/nixos-config";

	    # - Navigation - #
	    ".." = "cd ..";
	    "..." = "cd ../..";

	    # - General - #
	    ll = "ls -la";
	    mkdir = "mkdir -p";
	};

    # ------- Greetings ------- #
    interactiveShellInit = ''
	set fish_greeting ""
    '';

    };

}
