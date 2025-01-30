{ pkgs, ... }: {
  plugins.lsp = {
    enable = true;

    servers = {
      nixd.enable = true;
      clangd.enable = true;
      
      omnisharp.enable = true;
      jdtls.enable = true;
      kotlin_language_server.enable = true;
      gradle_ls = {
        enable = true;
        package = pkgs.vscode-extensions.vscjava.vscode-gradle;
      };

      lua_ls.enable = true;
      haxe_language_server = {
        enable = true;
        package = pkgs.nodejs; # It's literally impossible to build it with a nix flake...
        cmd = [ "/bin/sh" "-c" "node \"$HOME/.haxe/server.js\"" ];
        filetypes = [
          "haxe"
          "hxml"
        ];
      };

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
