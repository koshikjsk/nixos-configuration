### CONFIGURATION
{
  pkgs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
  ];

  ### SYSTEM
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  zramSwap = {
    enable = true;
    algorithm = "lz4";
    memoryPercent = 50;
    swapDevices = 1;
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  ### NETWORKING
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  ### TIME AND LOCALES
  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8";

  ### SERVICES
  services.xserver = {
    xkb.layout = "us,ru";
    xkb.options = "grp:win_space_toggle";
    enable = true;
    videoDrivers = [ "amdgpu" ];
    deviceSection = ''
      Option "TearFree" "true"
    '';
    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        i3lock-color
        feh
        picom
        dunst
      ];
    };
  };
  services.displayManager.ly.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
  services.blueman.enable = true;

  ### USER
  users.users.koshik = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
  };

  ### PACKAGES
  nixpkgs.config.allowUnfree = true;

  programs.ssh.startAgent = true;
  programs.dconf.enable = true;
  programs.amnezia-vpn.enable = true;
  programs.firefox.enable = true;
  programs.zsh.enable = true;
  environment.systemPackages = with pkgs; [
    neovim
    wget
    htop
    git
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
    config.common.default = "*";
  };

  ### SHIT
  system.stateVersion = "26.05";
}
