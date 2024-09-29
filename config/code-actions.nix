{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [
    actions-preview-nvim
  ];

  extraConfigLua = ''
    require('actions-preview').setup({
      diff = {
        ctxlen = 3,
      },
      backend = { "telescope" },
      telescope = vim.tbl_extend(
        "force",
        require("telescope.themes").get_ivy(),
        {
          make_value = nil,
          make_make_display = nil,
        }
      ),
    })
  ''; 
}
