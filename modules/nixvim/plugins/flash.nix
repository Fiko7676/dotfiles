{
  plugins.flash.enable = true;

  keymaps = [
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
  ];
}
