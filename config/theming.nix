{ lib, pkgs, ... }: {
  colorschemes.tokyonight = {
    enable = true;

    settings = {
      style = "night";
    };
  };
  
  plugins.lualine = {
    enable = true;

    settings = {
      options = {
        globalstatus = true;

        ignorefocus = [
          "neo-tree"
          "toggleterm"
          "dashboard"
        ];
      };
    };
  };
  
  plugins.noice = {
    enable = true;
  };

  plugins.notify = {
    enable = true;

    settings = {
      timeout = 1000;
      stages = "fade_in_slide_out";
      render = "compact";
    };
  };

  # TODO: REenable this when it updates in nixpkgs
  plugins.rainbow-delimiters.enable = true;
  plugins.todo-comments.enable = true;
  plugins.web-devicons.enable = true;

  plugins.cord = {
    enable = true;
    settings = {
      editor.tooltip = "The Based Text Editor";

      display = {
        theme = "catppuccin";
      };

      timestamp.enabled = false;
    };
  };

  extraPlugins = with pkgs.vimPlugins; [ monaspace-nvim ];

  extraConfigLua = ''
    require("monaspace").setup({})
  '';
}
