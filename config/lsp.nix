{ pkgs, ... }: {
  plugins.lsp = {
    enable = true;


    servers = {
      nixd.enable = true;
      clangd.enable = true;
      
      omnisharp.enable = true;
      java_language_server.enable = true;
      kotlin_language_server.enable = true;
      gradle_ls = {
        enable = true;
        package = pkgs.vscode-extensions.vscjava.vscode-gradle;
      };

      lua_ls.enable = true;

      superhtml = {
        enable = true;
        package = pkgs.superhtml;
      };
      tailwindcss.enable = true;
      ts_ls.enable = true;

      zls.enable = true;
      ziggy = {
        enable = true;
        package = null;
      };
    };
  };
}
