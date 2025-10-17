{
  lsp.servers = {
    nixd.enable = true;
    statix.enable = true;
  };

  plugins.none-ls.sources.formatting.alejandra.enable = true;
}
