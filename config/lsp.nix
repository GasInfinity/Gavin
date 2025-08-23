{ pkgs, ... }: {
  plugins.lsp = {
    enable = true;
    inlayHints = true;

    servers = {
      nixd.enable = true;
      clangd.enable = true;
      
      omnisharp = {
        enable = true;
        settings = {
          FormattingOptions = {
            EnableEditorConfigSupport = true;
            OrganizeImports = true;
          };
          RoslynExtensionsSupport = {
            EnableAnalyzersSupport = true;
            EnableImportCompletion = true;
            AnalyzeOpenDocumentsOnly = true;
          };
          Sdk = {
            IncludePrereleases = true;
          };
        };
      };
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

      zls = {
        enable = true;
        package = null;
      };

      ziggy = {
        enable = true;
        package = null;
      };

      glsl_analyzer.enable = true;
      jsonls.enable = true;
    };
  };
}
