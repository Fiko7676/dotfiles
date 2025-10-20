{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Fiko7676";
        email = "767fiko@gmail.com";
      };
      credential.helper = "store";
      init.defaultBranch = "main";
    };
    # userName = "Fiko7676";
    # userEmail = "767fiko@gmail.com";
    # extraConfig = {
    #   credential.helper = "store";
    #   init.defaultBranch = "main";
    # };
  };
}
