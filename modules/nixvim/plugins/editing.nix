{pkgs, ...}: {
  plugins = {
    # autopairs
    nvim-autopairs.enable = true;

    # blink.cmp
    blink-cmp = {
      enable = true;
      settings = {
        signature.enabled = true;
      };
    };

    # flash
    flash.enable = true;

    # luasnip
    luasnip = {
      enable = true;
      fromVscode = [{paths = [pkgs.vimPlugins.friendly-snippets];}];
    };
    friendly-snippets.enable = true;

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
