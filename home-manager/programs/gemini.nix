{pkgs, ...}: {
  programs.gemini-cli = {
    enable = true;
    settings = {
      selectedAuthType = "oauth-personal";
      vimMode = true;
      preferredEditor = "nvim";
      mcpServers = {
        nixos = {
          command = "nix";
          args = ["run" "github:utensils/mcp-nixos" "--"];
        };
      };
    };
  };
}
