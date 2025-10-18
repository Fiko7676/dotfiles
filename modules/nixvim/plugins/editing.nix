{
  plugins = {
    # autopairs
    nvim-autopairs.enable = true;

    # cmp
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          {name = "nvim_lsp";}
          {name = "path";}
          {name = "buffer";}
          {name = "cmp_nvim_lsp_signature_help";}
          {name = "emoji";}
          {name = "treesitter";}
          {name = "calc";}
          {name = "rg";}
        ];
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true; })";
          "<C-y>" = "cmp.mapping.confirm({ select = true; })";
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
        };
      };
    };
    lspkind.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-emoji.enable = true;
    cmp-treesitter.enable = true;
    cmp-calc.enable = true;
    cmp-rg.enable = true;

    # flash
    flash.enable = true;

    # none-ls
    none-ls.enable = true;

    # oil
    oil.enable = true;
    oil-git-status.enable = true;
  };

  keymaps = [
    # flash
    {
      action = "<cmd>lua require('flash').jump()<cr>";
      key = "s";
      options = {
        desc = "Flash";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('flash').treesitter()<cr>";
      key = "S";
      options = {
        desc = "Flash Treesitter";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Oil<cr>";
      key = "-";
      options = {
        desc = "Oil";
        noremap = true;
        silent = true;
      };
    }
  ];
}
