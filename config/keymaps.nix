{
  keymaps = [
    {
      action = "<cmd>Bdelete<cr>";
      key = "<C-d>";
      options = {
        desc = "Close current buffer";
      };
    }
    {
      action = "<cmd>bp<cr>";
      key = "<C-,>";
      options = {
        desc = "Move to previous buffer";
      };
    }
    {
      action = "<cmd>bn<cr>";
      key = "<C-.>";
      options = {
        desc = "Move to next buffer";
      };
    }
    {
      action = "<cmd>Neotree toggle<cr>";
      key = "<C-e>";
      options = {
        desc = "Toggle Explorer"; 
      };
    }
    {
      action = "<cmd>Neotree focus reveal<cr>";
      key = "<C-f>";
      options = {
        desc = "Focus Explorer";
      };
    }
    {
      action = { __raw = "vim.lsp.buf.rename"; };
      key = "<leader>lrn";
      options = {
        desc = "LSP Refactor: Rename";
      };
    }
    {
      action = { __raw = "vim.lsp.buf.hover"; };
      key = "<leader>ld";
      options = {
        desc = "LSP: Hover docs";
      };
    }
    {
      action = { __raw = "vim.lsp.buf.code_action"; };
      key = "<leader>lc";
      options = {
        desc = "LSP: Code Action"; 
      };
    }
    {
      action = { __raw = "vim.lsp.buf.references"; };
      key = "<leader>lrr";
      options = {
        desc = "LSP: References";
      };
    }
  ];
}
