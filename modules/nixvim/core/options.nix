{
  # -- Global Variables --
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  # -- Core Editor Options --
  opts = {
    # -- Tabs & Indentation --
    tabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    autoindent = true;
    smartindent = true;

    # -- UI & Appearance --
    number = true;
    relativenumber = true;
    cursorline = true;
    termguicolors = true;
    signcolumn = "yes";
    laststatus = 2;
    splitbelow = true;
    splitright = true;
    pumheight = 10;
    showmode = false;

    # -- File Handling --
    undofile = true;
    swapfile = false;
    backup = false;
    writebackup = true;
    confirm = true;
    autoread = true;

    # -- Text Editing & Behavior --
    wrap = false;
    clipboard = "unnamedplus";
    scrolloff = 8;
    sidescrolloff = 8;
    hidden = true;
    whichwrap = "b,s,<,>,[,]";

    # -- Search --
    hlsearch = true;
    incsearch = true;
    ignorecase = true;
    smartcase = true;
    gdefault = true;
  };
}
