{
  lsp.servers.basedpyright.enable = true;

  plugins.none-ls.sources = {
    formatting.black.enable = true;
    formatting.isort.enable = true;

    diagnostics.pylint.enable = true;
  };
}
