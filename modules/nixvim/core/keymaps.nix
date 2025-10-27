{
  keymaps = [
    {
      action = "<cmd>w<cr>";
      key = "<C-s>";
      options = {
        desc = "Save File";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>wqa!<cr>";
      key = "<leader>qq";
      options = {
        desc = "Quit Nvim";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>wq!<cr>";
      key = "<leader>qw";
      options = {
        desc = "Quit Window";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<C-w>h";
      key = "<C-h>";
      options = {
        desc = "Go to Left Window";
        remap = true;
      };
    }
    {
      action = "<C-w>j";
      key = "<C-j>";
      options = {
        desc = "Go to Lower Window";
        remap = true;
      };
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
      options = {
        desc = "Go to Upper Window";
        remap = true;
      };
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
      options = {
        desc = "Go to Right Window";
        remap = true;
      };
    }
    {
      action = "<cmd>lua vim.lsp.buf.definition()<cr>";
      key = "gd";
      options = {
        desc = "Go to definition";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.lsp.buf.references()<cr>";
      key = "gr";
      options = {
        desc = "Go to references";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.lsp.buf.implementation()<cr>";
      key = "gi";
      options = {
        desc = "Go to implementation";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.lsp.buf.hover()<cr>";
      key = "K";
      options = {
        desc = "Hover";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.lsp.buf.rename()<cr>";
      key = "<leader>cr";
      options = {
        desc = "Rename";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
      key = "<leader>ca";
      options = {
        desc = "Code action";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
      key = "<leader>cx";
      options = {
        desc = "Show diagnostics";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.setloclist()<cr>";
      key = "<leader>cl";
      options = {
        desc = "Location list";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.setqflist()<cr>";
      key = "<leader>cq";
      options = {
        desc = "Quickfix list";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.goto_prev()<cr>";
      key = "[q";
      options = {
        desc = "Previous diagnostic";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.goto_next()<cr>";
      key = "]q";
      options = {
        desc = "Next diagnostic";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      key = "<leader>cf";
      options = {
        desc = "Format code";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
      key = "<leader>cd";
      options = {
        desc = "Line diagnostics";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.goto_next()<cr>";
      key = "]d";
      options = {
        desc = "Next diagnostic";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.goto_prev()<cr>";
      key = "[d";
      options = {
        desc = "Previous diagnostic";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<cr>";
      key = "]e";
      options = {
        desc = "Next error";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<cr>";
      key = "[e";
      options = {
        desc = "Previous error";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.WARN})<cr>";
      key = "]w";
      options = {
        desc = "Next warning";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.WARN})<cr>";
      key = "[w";
      options = {
        desc = "Previous warning";
        noremap = true;
        silent = true;
      };
    }
  ];
}
