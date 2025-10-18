{
  enable = true;

  imports = [
    ./core/autocmd.nix
    ./core/keymaps.nix
    ./core/lsp.nix
    ./core/options.nix

    ./lang/python.nix
    ./lang/markdown.nix
    ./lang/nix.nix

    ./plugins/ai.nix
    ./plugins/editing.nix
    ./plugins/git.nix
    ./plugins/picker.nix
    ./plugins/ui.nix
  ];
}