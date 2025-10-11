{
  plugins = {
    oil.enable = true;
    oil-git-status.enable = true;
  };

  keymaps = [
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
