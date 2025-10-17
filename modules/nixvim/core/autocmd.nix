{
  autoCmd = [
    {
      event = "BufWritePre";
      pattern = "*";
      command = "lua vim.lsp.buf.format({ async = false })";
    }
  ];
}
