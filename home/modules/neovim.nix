{ inputs, pkgs, ... }:
{

    imports = [ inputs.nixvim.homeModules.nixvim ];

    programs.nixvim = {

	enable = true;
	
	colorschemes.tokyonight.enable = true;

	globalOpts = {

	    number = true;
	    relativenumber = true;
	    shiftwidth = 2;
	    expandtab = true;
	};

        plugins = {

	    lualine.enable = true;
	    telescope.enable = true;
	    treesitter.enable = true;
	    nvim-tree.enable = true;
        };

	lsp = {

	    servers = {

		nixd.enable = true;
	    };
	};
    };
}
