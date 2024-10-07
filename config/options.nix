{
  viAlias = true;
  vimAlias = true;
    
  colorschemes.tokyonight = {
    enable = true;

    settings = {
      dim_inactive = true;
    };
  };

  performance = {
    byteCompileLua.enable = true;
    combinePlugins.enable = true;
  };

  opts = {
    number = true;
    relativenumber = false;

    signcolumn = "yes";

    ignorecase = true;
    smartcase = true;

    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 0;
    expandtab = true;
    smarttab = true;

    clipboard = "unnamedplus";
    mouse = ""; # I've had enough with my trackpad...

    cursorline = true;

    ruler = true;

    gdefault = true;

    scrolloff = 8;

    completeopt = "menu,menuone,noselect";
  };
  
  globals = {
    c_syntax_for_h = true;
    mapleader = " ";
  };
}
