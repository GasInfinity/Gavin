{
  plugins.lsp = {
    enable = true;


    servers = {
      nixd.enable = true;
      
      omnisharp.enable = true;
      zls.enable = true;
      lua_ls.enable = true;
      clangd.enable = true;
      java_language_server.enable = true;
      ts_ls.enable = true;
    };
  };
}
