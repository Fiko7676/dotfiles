{
  lsp.servers.marksman.enable = true;

  plugins = {
    none-ls.sources = {
      formatting.prettierd.enable = true;

      diagnostics.markdownlint_cli2.enable = true;
    };

    render-markdown.enable = true;
    markdown-preview.enable = true;
  };
}
