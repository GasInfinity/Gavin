{
  keymaps = [
    {
      action = "<cmd>wincmd h<cr>";
      key = "<C-h>";
      mode = ["t" "n"];
      options = {
        desc = "Move focus to the left";
      };
    }
    {
      action = "<cmd>wincmd j<cr>";
      key = "<C-j>";
      mode = ["t" "n"];
      options = {
        desc = "Move focus down";
      };
    }
    {
      action = "<cmd>wincmd k<cr>";
      key = "<C-k>";
      mode = ["t" "n"];
      options = {
        desc = "Move focus up";
      };
    }
    {
      action = "<cmd>wincmd l<cr>";
      key = "<C-l>";
      mode = ["t" "n"];
      options = {
        desc = "Move focus to the right";
      };
    }
    {
      action = "<cmd>Bdelete<cr>";
      key = "<C-d>";
      options = {
        desc = "Close current buffer";
      };
    }
    {
      action = "<cmd>bp<cr>";
      key = "<C-n>";
      options = {
        desc = "Move to previous buffer";
      };
    }
    {
      action = "<cmd>bn<cr>";
      key = "<C-m>";
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
      action = "<cmd>ToggleTerm size=12 name=Terminal<cr>";
      key = "<C-t>";
      options = {
        desc = "Toggle terminal";
      };
    }
    {
      action = "<cmd>UndotreeToggle<cr>";
      key = "<C-u>";
      options = {
        desc = "Toggle undo tree";
      };
    }
    {
      action = "<C-\\><C-n>";
      key = "<Esc>";
      mode = "t";
      options = {
        desc = "Exit terminal mode";
      };
    }
    {
      action = "<cmd>Telescope find_files<cr>";
      key = "<leader>ff";
      options = {
        desc = "Telescope: Find files";
      };
    }
    {
      action = "<cmd>Telescope live_grep<cr>";
      key = "<leader>fg";
      options = {
        desc = "Telescope: Live grep";
      };
    }
    {
      action = "<cmd>Telescope buffers<cr>";
      key = "<leader>fb";
      options = {
        desc = "Telescope: Buffers";
      };
    }
    {
      action = { __raw = "vim.lsp.buf.rename"; };
      key = "<leader>lrn";
      options = {
        desc = "LSP: Rename";
      };
    }
    {
      action = { __raw = "vim.lsp.buf.definition"; };
      key = "<leader>lgg";
      options = {
        desc = "LSP: Go to definition";
      };
    }
    {
      action = { __raw = "vim.lsp.buf.definition"; };
      key = "<leader>lgt";
      options = {
        desc = "LSP: Go to declaration";
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
      action = { __raw = "require('actions-preview').code_actions"; };
      key = "<leader>lc";
      options = {
        desc = "LSP: Code action"; 
      };
    }
    {
      action = { __raw = "vim.lsp.buf.references"; };
      key = "<leader>lrr";
      options = {
        desc = "LSP: References";
      };
    }
    {
      action = "<cmd>Trouble diagnostics open focus=true<cr>";
      key = "<leader>lts";
      options = {
        desc = "LSP: Show Diagnostics (Trouble)";
      };
    }
    {
      action = "<cmd>Trouble diagnostics close<cr>";
      key = "<leader>lth";
      options = {
        desc = "LSP: Hide Diagnostics (Trouble)";
      };
    }
  ];
}
