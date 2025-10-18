{
  # ayu
  colorschemes.tokyonight = {
    enable = true;
    settings.style = "night";
  };

  # bufferline
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        mode = "buffers";
        numbers = "none";
        close_command = "bdelete! %d";
        right_mouse_command = "bdelete! %d";
        left_mouse_command = "buffer %d";
        middle_mouse_command = null;
        indicator = {
          icon = "▎";
          style = "icon";
        };
        buffer_close_icon = "󰅖";
        modified_icon = "●";
        close_icon = "";
        left_trunc_marker = "";
        right_trunc_marker = "";
        max_name_length = 18;
        max_prefix_length = 15;
        truncate_names = true;
        tab_size = 18;
        diagnostics = "nvim_lsp";
        diagnostics_update_in_insert = false;
        offsets = [
          {
            filetype = "neo-tree";
            text = "Neo-tree";
            highlight = "Directory";
            text_align = "left";
          }
        ];
        color_icons = true;
        show_buffer_icons = true;
        show_buffer_close_icons = true;
        show_close_icon = true;
        show_tab_indicators = true;
        show_duplicate_prefix = true;
        persist_buffer_sort = true;
        separator_style = "slant";
        enforce_regular_tabs = false;
        always_show_bufferline = true;
        hover = {
          enabled = true;
          delay = 200;
          reveal = ["close"];
        };
        sort_by = "insert_after_current";
      };
    };
  };

  # lualine.nix
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        icons_enabled = true;
        theme = "auto";
        component_separators = {
          left = "";
          right = "";
        };
        section_separators = {
          left = "";
          right = "";
        };
        disabled_filetypes = {
          statusline = [];
          winbar = [];
        };
        ignore_focus = [];
        always_last_session = true;
        globalstatus = true;
        refresh = {
          statusline = 1000;
          tabline = 1000;
          winbar = 1000;
        };
      };
      sections = {
        lualine_a = ["mode"];
        lualine_b = ["filename"];
        lualine_c = ["branch"];
        lualine_x = ["diagnostics" "diff" "encoding" "fileformat" "filetype"];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
      inactive_sections = {
        lualine_a = [];
        lualine_b = [];
        lualine_c = ["filename"];
        lualine_x = ["location"];
        lualine_y = [];
        lualine_z = [];
      };
      tabline = {};
      extensions = [];
    };
  };

  # mini-icons
  plugins.mini = {
    enable = true;
    modules.icons.enable = true;
    mockDevIcons = true;
  };

  # noice
  plugins.noice = {
    enable = true;
    settings = {
      cmdline.enabled = true;
      presets = {
        command_palette = true;
        long_message_to_split = true;
        lsp_doc_border = true;
      };
    };
  };

  # which-key
  plugins.which-key = {
    enable = true;
    settings.preset = "modern";
  };

  plugins.treesitter = {
    enable = true;
    settings = {
      auto_install = true;
      highlight.enable = true;
      indent.enable = true;
    };
  };

  # bufferline
  keymaps = [
    {
      action = "<cmd>BufferLineCycleNext<CR>";
      key = "H";
      options = {
        desc = "Next Buffer";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>BufferLineCyclePrev<CR>";
      key = "L";
      options = {
        desc = "Previous Buffer";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>bdelete<CR>";
      key = "<leader>bd";
      options = {
        desc = "Close Buffer";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>BufferLineCycleNext<CR>";
      key = "<leader>bn";
      options = {
        desc = "Next Buffer";
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>BufferLineCyclePrev<CR>";
      key = "<leader>bp";
      options = {
        desc = "Previous Buffer";
        noremap = true;
        silent = true;
      };
    }
  ];
}
