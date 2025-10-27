{
  # This config is AI generated

  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        hide_cursor = true;
        no_fade_in = false;
        no_fade_out = false;
        no_unlock_touch = false;
        no_startup_animation = false;
      };

      background = [
        {
          path = "screenshot";
          blur_passes = 3;
        }
      ];

      input-field = [
        {
          monitor = "";
          size = "200, 50";
          outline_thickness = 3;
          outer_color = "rgb(153c3c)";
          inner_color = "rgb(292d2e)";
          font_color = "rgb(cdd6f4)";
          fade_on_empty = true;
          placeholder_text = "<i>Input Password...</i>";
          hide_input = false;
          check_color = "rgb(d79921)";
          fail_color = "rgb(cc241d)";
          fail_text = "<i>$FAIL</i>";
          fail_text_fade_on_clear = true;
          fail_text_fade_duration = 2;
        }
      ];

      label = [
        {
          monitor = "";
          text = "cmd[update:1000] echo \"$(date '+%H:%M:%S')\"";
          color = "rgb(cdd6f4)";
          font_size = 48;
          font_family = "monospace";
          position = "0, 80";
          halign = "center";
          valign = "center";
        }
        {
          monitor = "";
          text = "cmd[update:60000] echo \"$(date '+%A, %d %B %Y')\"";
          color = "rgb(cdd6f4)";
          font_size = 24;
          font_family = "monospace";
          position = "0, 140";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };

  programs.wlogout.enable = true;
}
