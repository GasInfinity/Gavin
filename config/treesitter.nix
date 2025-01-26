{ pkgs, ... }: let
  treesitter-haxe-grammar = pkgs.tree-sitter.buildGrammar rec {
    language = "haxe";
    version = "0.12.0";

    src = (pkgs.fetchFromGitHub {
      owner = "vantreeseba";
      repo = "tree-sitter-haxe";
      rev = "v${version}";
      hash = "sha256-scpR9gw1n4i/slu8uXuFeUUj9Vm4+f2V1SEYkUfnQZk=";
    }).overrideAttrs
    (drv: {
      fixupPhase = ''
        mkdir -p $out/queries/haxe
        mv $out/queries/*.scm $out/queries/haxe/
      '';
    });

    meta.homepage = "https://github.com/vantreeseba/tree-sitter-haxe";
  };
in {
  extraPlugins = [
    treesitter-haxe-grammar
  ];

  plugins = {
    treesitter = {
      enable = true;

      grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars ++ [
          treesitter-haxe-grammar
      ];

      luaConfig.post = ''
        do
          local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

          parser_config.haxe = {
            install_info = {
              url = "${treesitter-haxe-grammar}",
              files = {"src/parser.c", "src/scanner.c"},
            },
            filetype = "haxe",
          }
        end
      '';
      
      settings = {
        highlight = {
          enable = true;
          additional_vim_regex_highlighting = false;
        };

        indent = {
          enable = true;
        };
      };
    };
  };
}
