{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  # ------- Flakes ------- #
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # ------- Bootloader ------- #
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # ------- Host ------- #
  networking.hostName = "nixos";

  # ------- Network ------- #
  networking.networkmanager.enable = true;

  # ------- Zone ------- #
  time.timeZone = "America/Mazatlan";

  i18n.defaultLocale = "en_US.UTF-8";

  # ------- Desktop Enviroment ------- #
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.xserver.enable = true;  

  # ------- Keyboard ------- #
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # ------- Stuff ------- #
  services.printing.enable = true;

  # ------- Sound ------- #
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # ------- Users ------- #
  users.users."nephila" = {
    isNormalUser = true;
    description = "Nephila";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      kdePackages.kate
    #  thunderbird
    ];
  };

  programs.fish.enable = true;

  # ------- Programs/Packages ------- #
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    curl
    unzip
  ];

  programs.firefox.enable = true;

  programs.steam.enable = true;
  
  services.flatpak.enable = true;

  nixpkgs.config.allowUnfree = true;

  # ------- System Version ------- #
  system.stateVersion = "26.05"; # Did you read the comment? Yea duh C:

}
