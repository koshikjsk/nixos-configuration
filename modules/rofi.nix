{ pkgs, ... }: {
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.alacritty}/bin/alacritty";
    font = "JetBrainsMono Nerd Font Propo Bold 12";
    location = "center";
    cycle = false;

    plugins = with pkgs; [
      rofi-emoji
      rofi-calc
    ];

    theme = "/home/koshik/nixos/modules/xdg_configs/rofi/theme.rasi";
  };
}
