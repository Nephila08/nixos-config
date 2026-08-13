{ pkgs, ... }:

{

    programs.git = {

	enable = true;
	
	settings = {
	
	    user.name = "Nephila";
	    user.email = "nephila.spider08@gmail.com";
	};
    };
}
