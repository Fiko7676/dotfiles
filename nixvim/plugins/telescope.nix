{
  plugins.telescope = {
    enable = true;
    extensions.fzf-native.enable = true;
  };

  keymaps = [
    {
      action = "<cmd>Telescope find_files<cr>";
      key = "<leader><space>";
      options = {
        desc = "Find Files";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope find_files<cr>";
      key = "<leader>ff";
      options = {
        desc = "Find Files";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope live_grep<cr>";
      key = "<leader>fg";
      options = {
        desc = "Find by Grep";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope buffers<cr>";
      key = "<leader>fb";
      options = {
        desc = "Find Buffers";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope help_tags<cr>";
      key = "<leader>fh";
      options = {
        desc = "Find Help";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope resume<cr>";
      key = "<leader>fr";
      options = {
        desc = "Resume Telescope";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope git_commits<cr>";
      key = "<leader>gc";
      options = {
        desc = "Git Commits";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope git_status<cr>";
      key = "<leader>gs";
      options = {
        desc = "Git Status";
        noremap = true;
        silent = true;
      };
    }
  ];
}
