{
  programs.gemini-cli = {
    enable = true;
    settings = {
      selectedAuthType = "oauth-personal";
      preferredEditor = "nvim";
      mcpServers = {
        nixos = {
          command = "nix";
          args = ["run" "github:utensils/mcp-nixos" "--"];
        };
        obsidian = {
          command = "uvx";
          args = ["mcp-obsidian"];
        };
      };
    };
  };
}
