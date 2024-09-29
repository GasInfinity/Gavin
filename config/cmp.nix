{
  plugins.cmp = {
    enable = true;

    settings = {
      mapping = {
        __raw = ''
          cmp.mapping.preset.insert({
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true })
          })
        '';
      };
      sources = [
        {
          name = "nvim_lsp";
        }
        {
          name = "path";
        }
        {
          name = "buffer";
        }
        {
          name = "calc"; 
        }
      ];
    };
  };
}
