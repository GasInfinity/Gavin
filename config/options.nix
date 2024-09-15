{
  viAlias = true;
  vimAlias = true;
    
  colorschemes.cyberdream = {
    enable = true;

    settings = {
      transparent = true;
    };
  };

  performance = {
    byteCompileLua.enable = true;
    combinePlugins.enable = true;
  };

  globalOpts = {
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

    cursorline = true;

    ruler = true;

    gdefault = true;

    scrolloff = 8;

    completeopt = "menu,menuone,noinsert,noselect";
  };

}
