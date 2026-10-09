{ ... }: {
  services.dunst = {
    enable = true;
    settings = {
      global = {
        width = 300;
        height = 300;
        offset = "30x50";
        origin = "top-right";
        transparency = 10;
        frame_color = "#cdd6f4";
        font = "JetBrainsMono Nerd Font Propo Bold 11";
      };

      urgency_normal = {
        background = "#1e1e2e";
        foreground = "#cdd6f4";
        timeout = 10;
      };
    };
  };
}
