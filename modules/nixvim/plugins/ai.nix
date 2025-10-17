{
  plugins = {
    avante = {
      enable = true;
      settings = {
        instructions_file = "AGENT.md";

        provider = "gemini";

        gemini = {
          model = "gemini-2.5-flash";
          api_key_name = "GEMINI_API_KEY";
        };
      };
    };

    render-markdown = {
      enable = true;
      settings = {
        file_types = ["markdown" "Avante"];
      };
    };
  };
}
