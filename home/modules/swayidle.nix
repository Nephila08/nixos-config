{ pkgs, ... }:
{

    services.swayidle = {

	enable = true;

	timeouts = [
	    {

		timeout = 300;
		command = "${pkgs.swaylock}/bin/swaylock -f";
	    }
	    {

		timeout = 600;
		command = "niri msg action power-off-monitors";
		resumeCommand = "niri msg action power-on-monitors";
	    }
	];
    };
}
