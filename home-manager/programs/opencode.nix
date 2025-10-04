{
  programs.opencode = {
    enable = true;
    settings = {
      mcp = {
        nixos = {
          type = "local";
          command = ["nix" "run" "github:utensils/mcp-nixos" "--"];
          enabled = true;
        };
        obsidian = {
          type = "local";
          command = ["uvx" "mcp-obsidian"];
          enabled = true;
        };
      };
    };
  };
}
