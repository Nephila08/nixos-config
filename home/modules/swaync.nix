{ pkgs, ... }:
{

    services.swaync = {

	enable = true;

	settings = {

	    positionX = "right";
	    positionY = "top";
	    timeout = 5;
	    notification-window-width = 400;

	};

	style = ''
	
	    .notification {

		background: #1a1b26;
		border-radius: 8px;
		color: #c0caf5;
	    }

	    .notification-row {

		background: transparent;
	    }
	'';
    };
}
