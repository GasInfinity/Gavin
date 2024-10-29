{
  plugins.lsp = {
    enable = true;


    servers = {
      nixd.enable = true;
      clangd.enable = true;
      
      omnisharp.enable = true;
      java_language_server.enable = true;

      lua_ls.enable = true;

      superhtml.enable = true;
      tailwindcss.enable = true;
      ts_ls.enable = true;

      zls.enable = true;
      ziggy.enable = true;
    };
  };
}
