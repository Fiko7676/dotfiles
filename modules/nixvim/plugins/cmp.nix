{
  plugins = {
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
  };
}
