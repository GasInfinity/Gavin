{
  plugins.indent-blankline = {
    enable = true;

    settings = {
      exclude = {
        filetypes = [
          "lspinfo"
          "packer"
          "checkhealth"
          "help"
          "man"
          "gitcommit"
          "TelescopePrompt"
          "TelescopeResults"
          "''"
          "dashboard"
        ];
      };
    };
  };
}
