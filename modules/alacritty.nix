{ ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.95;
        padding = {
          x = 8;
          y = 8;
        };
      };
      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Bold";
        };
        size = 11.0;
      };
      colors = {
        primary = {
          background = "#1e1e2e"; # Base
          foreground = "#cdd6f4"; # Text
          dim_foreground = "#7f849c"; # Subtext1
        };

        cursor = {
          text = "#1e1e2e"; # Base
          cursor = "#f5e0dc"; # Rosewater
        };

        vi_mode_cursor = {
          text = "#1e1e2e"; # Base
          cursor = "#b4befe"; # Lavender
        };

        search.matches = {
          foreground = "#1e1e2e"; # Base
          background = "#a6adc8"; # Subtext0
        };

        search.focused_match = {
          foreground = "#1e1e2e"; # Base
          background = "#a6e3a1"; # Green
        };

        footer_bar = {
          background = "#11111b"; # Mantle
          foreground = "#cdd6f4"; # Text
        };

        hints.start = {
          foreground = "#1e1e2e"; # Base
          background = "#f9e2af"; # Yellow
        };

        hints.end = {
          foreground = "#1e1e2e"; # Base
          background = "#a6adc8"; # Subtext0
        };

        selection = {
          text = "#1e1e2e"; # Base
          background = "#f5e0dc"; # Rosewater
        };

        normal = {
          black = "#45475a"; # Surface1
          red = "#f38ba8"; # Red
          green = "#a6e3a1"; # Green
          yellow = "#f9e2af"; # Yellow
          blue = "#89b4fa"; # Blue
          magenta = "#f5c2e7"; # Pink
          cyan = "#94e2d5"; # Teal
          white = "#bac2de"; # Subtext1
        };

        bright = {
          black = "#585b70"; # Surface2
          red = "#f38ba8"; # Red
          green = "#a6e3a1"; # Green
          yellow = "#f9e2af"; # Yellow
          blue = "#89b4fa"; # Blue
          magenta = "#f5c2e7"; # Pink
          cyan = "#94e2d5"; # Teal
          white = "#a6adc8"; # Subtext0
        };

        dim = {
          black = "#45475a";
          red = "#f38ba8";
          green = "#a6e3a1";
          yellow = "#f9e2af";
          blue = "#89b4fa";
          magenta = "#f5c2e7";
          cyan = "#94e2d5";
          white = "#bac2de";
        };
      };
    };
  };
}
