{pkgs, ...}: {
  extraPackages = [pkgs.rustfmt pkgs.clippy];

  plugins = {
    crates.enable = true;
    rustaceanvim.enable = true;
  };

  lsp.servers.rust_analyzer.enable = true;
}
