{
  enable = true;

  imports = [
    ./core/autocmd.nix
    ./core/keymaps.nix
    ./core/lsp.nix
    ./core/options.nix

    ./lang/markdown.nix
    ./lang/nix.nix
    ./lang/python.nix
    ./lang/rust.nix
    ./lang/typescript.nix

    ./plugins/ai.nix
    ./plugins/editing.nix
    ./plugins/git.nix
    ./plugins/picker.nix
    ./plugins/ui.nix
  ];
}
