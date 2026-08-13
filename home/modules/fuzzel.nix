{ pkgs, ... }:
{

    programs.fuzzel = {

	enable = true;

	settings = {

	    main = {

		#font = "";
		terminal = "kitty";
	    };

	    colors = {

		background = "1a1b26f0";
		text = "c0caf5ff";
	    };
	};
    };
}
