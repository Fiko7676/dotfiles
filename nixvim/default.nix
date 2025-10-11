{
  enable = true;

  imports = [
    ./core/autocmd.nix
    ./core/keymaps.nix
    ./core/lsp.nix
    ./core/options.nix

    ./lang/markdown.nix
    ./lang/nix.nix

    ./plugins/ai.nix
    ./plugins/autopairs.nix
    ./plugins/ayu.nix
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    ./plugins/flash.nix
    ./plugins/gitsigns.nix
    ./plugins/lazygit.nix
    ./plugins/mini-icons.nix
    ./plugins/lualine.nix
    ./plugins/noice.nix
    ./plugins/none-ls.nix
    ./plugins/oil.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
    ./plugins/which-key.nix
  ];
}
