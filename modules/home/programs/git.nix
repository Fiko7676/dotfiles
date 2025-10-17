{
  programs.git = {
    enable = true;
    userName = "Fiko7676";
    userEmail = "767fiko@gmail.com";
    extraConfig = {
      credential.helper = "store";
      init.defaultBranch = "main";
    };
  };
}
