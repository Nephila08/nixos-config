{ pkgs, ... }:

{
    programs.kitty = {

	enable = true;
	
	settings = {

	    # --- Font --- #
	    #font_family = "";
	    #font_size = "";

	    # --- Window --- #
	    window_padding_width = 8;
	    background_opacity = "0.96";
	    
	    # --- Confirm Message --- #
	    confirm_os_window_close = 0;

	};
    };

}
