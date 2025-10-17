
{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    package = pkgs.tmux;
    aggressiveResize = true;
    baseIndex = 1;
    clock24 = true;
    customPaneNavigationAndResize = false; # We will define our own
    disableConfirmationPrompt = true;
    escapeTime = 0;
    historyLimit = 10000;
    keyMode = "vi";
    mouse = true;
    newSession = true;
    prefix = "C-a";
    plugins = with pkgs; [
      tmuxPlugins.catppuccin
    ];
    extraConfig = ''
      # Set default terminal to 256 colors
      set -g default-terminal "tmux-256color"

      # Move status bar to top
      set -g status-position top

      # Catppuccin flavor
      set -g @catppuccin_flavour 'mocha'

      # Start windows and panes at 1, not 0
      set -g pane-base-index 1
      set-window-option -g pane-base-index 1

      # Switch windows with Shift + Alt + H/L
      bind -n M-H previous-window
      bind -n M-L next-window

      # Vim-style pane navigation
      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R

      # Vim-style pane resizing
      bind -r H resize-pane -L 5
      bind -r J resize-pane -D 5
      bind -r K resize-pane -U 5
      bind -r L resize-pane -R 5
    '';
  };
}
