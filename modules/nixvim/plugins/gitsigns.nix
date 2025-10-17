{
  plugins.gitsigns = {
    enable = true;
  };
  keymaps = [
    {
      action = "<cmd>Gitsigns next_hunk<CR>";
      key = "]c";
      options = {
        desc = "Next Git Hunk";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns prev_hunk<CR>";
      key = "[c";
      options = {
        desc = "Previous Git Hunk";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns stage_hunk<CR>";
      key = "<leader>hs";
      options = {
        desc = "Stage Hunk";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns reset_hunk<CR>";
      key = "<leader>hr";
      options = {
        desc = "Reset Hunk";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns preview_hunk<CR>";
      key = "<leader>hp";
      options = {
        desc = "Preview Hunk";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns blame_line<CR>";
      key = "<leader>hb";
      options = {
        desc = "Blame Line";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns diffthis<CR>";
      key = "<leader>hd";
      options = {
        desc = "Diff This";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns stage_buffer<CR>";
      key = "<leader>hS";
      options = {
        desc = "Stage Buffer";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns undo_stage_hunk<CR>";
      key = "<leader>hu";
      options = {
        desc = "Undo Stage Hunk";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns reset_buffer<CR>";
      key = "<leader>hR";
      options = {
        desc = "Reset Buffer";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns diffthis ~<CR>";
      key = "<leader>hD";
      options = {
        desc = "Diff This ~";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns toggle_current_line_blame<CR>";
      key = "<leader>tb";
      options = {
        desc = "Toggle Current Line Blame";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns toggle_deleted<CR>";
      key = "<leader>td";
      options = {
        desc = "Toggle Deleted";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns select_hunk<CR>";
      key = "ih";
      mode = ["o" "x"];
      options = {
        desc = "Select Hunk (Text Object)";
        noremap = true;
        silent = true;
      };
    }
  ];
}
