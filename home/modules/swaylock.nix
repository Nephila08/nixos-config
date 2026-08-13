{ pkgs, ... }:
{

    programs.swaylock = {

	enable = true;

	settings = {

	    color = "1a1b26";
	    font-size = 24;
	    indicator-idle-visible = false;
	    indicator-radius = 100;
	    indicator-thickness = 10;
	    line-color = "1a1b26";
	    ring-color = "7aa2f7";
	    inside-color = "1a1b26";
	    key-hl-color = "7aa2f7";
	    separator-color = "00000000";
	    text-color = "c0caf5";
	};
    };
}
