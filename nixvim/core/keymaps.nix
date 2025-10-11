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
  ];
}
