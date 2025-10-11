{
  plugins.lazygit.enable = true;

  keymaps = [
    {
      action = "<cmd>LazyGit<cr>";
      key = "<leader>gg";
      options = {
        desc = "Lazygit";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>LazyGitLog<cr>";
      key = "<leader>gf";
      options = {
        desc = "Lazygit Log";
        noremap = true;
        silent = true;
      };
    }
  ];
}
