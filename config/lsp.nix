{
  plugins.lsp = {
    enable = true;


    servers = {
      nixd.enable = true;
      
      csharp-ls.enable = true;
      zls.enable = true;
      lua-ls.enable = true;
      clangd.enable = true;
      java-language-server.enable = true;
    };
  };
}
