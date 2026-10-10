{ config, pkgs, ... }:
{
  home.username = "koshik";
  home.homeDirectory = "/home/koshik";
  home.stateVersion = "26.05";
  ### GIT
  programs.git = {
    enable = true;
    userName = "Koshik Jsk";
    userEmail = "egkosh132@gmail.com";
  };

  ### SHELL
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    oh-my-zsh = {
      enable = true;
      theme = "candy";
      plugins = [
        "git"
        "sudo"
        "colored-man-pages"
      ];
    };
    shellAliases = {
      rs = "sudo nixos-rebuild switch";
      gc = "nix-collect-garbage -d";
      pf = "pfetch";
      vc = "nvim ~/nixos/configuration.nix";
      vh = "nvim ~/nixos/home.nix";
    };
  };

  ### IMPORTS
  imports = [
    ./modules/picom.nix
    ./modules/i3blocks.nix
    ./modules/alacritty.nix
    ./modules/rofi.nix
    ./modules/dunst.nix
  ];
  ### XDG CONFIGS
  xdg.configFile."nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/koshik/nixos/modules/xdg_configs/nvim";
    recursive = true;
  };
  xdg.configFile."i3" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/koshik/nixos/modules/xdg_configs/i3";
    recursive = true;
  };
  ### THEMES
  gtk = {
    enable = true;
    theme = {
      name = "catppuccin-mocha-blue-standard";
      package = pkgs.catppuccin-gtk.override {
        variant = "mocha";
        accents = [ "blue" ];
        size = "standard";
      };
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "blue";
      };
    };
    font = {
      name = "JetBrains Mono Nerd Font";
      size = 11;
    };
    gtk3.extraConfig.gtk-application-perfer-dark-theme = true;
    gtk4.extraConfig.gtk-application-perfer-dark-theme = true;
  };
  catppuccin = {
    flavor = "mocha";
    accent = "blue";
  };
  ### PACKAGES
  home.packages = with pkgs; [
    alacritty
    tmux
    i3blocks
    xclip
    maim
    slop
    gcc
    tree-sitter
    nodejs
    lua-language-server
    gnumake
    ripgrep
    nixd
    rtorrent
    nixfmt
    unzip
    neovim
    pfetch
    telegram-desktop
    amnezia-vpn
    networkmanagerapplet
    pasystray
    cmus
    blueman
    thunar
    steam
    xtitle
  ];
}
