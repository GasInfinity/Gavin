{
  plugins.cmp = {
    enable = true;

    settings = {
      snippet.expand.__raw = ''function(args) vim.snippet.expand(args.body) end'';
      mapping = {
        __raw = ''
          cmp.mapping.preset.insert({
            ["<Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                if #cmp.get_entries() == 1 then
                  cmp.confirm({ select = true });
                else 
                  cmp.select_next_item()
                end
              elseif vim.snippet.active({ direction = 1 }) then
                vim.snippet.jump(1)
              else
                fallback()
              end
            end, { 'i', 's' }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif vim.snippet.active({ direction = -1 }) then
                vim.snippet.jump(-1)
              else
                fallback()
              end
            end, { 'i', 's' }),
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
          name = "calc"; 
        }
      ];
    };
  };
}
