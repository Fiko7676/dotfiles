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
        obsidian = {
          command = "uvx";
          args = ["mcp-obsidian"];
          env = {
            OBSIDIAN_API_KEY = "a7aa4e90a8b0a5bb3d408f615d8569df2c5c53d1f8211042a3830079505e14be";
          };
        };
      };
    };
  };
}
