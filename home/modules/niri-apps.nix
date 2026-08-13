{ pkgs, ... }:
{

    home.packages = with pkgs; [
	
	fuzzel
	swaynotificationcenter
	yazi
	waybar
	swaybg
	swaylock
	swayidle

    ];
}
