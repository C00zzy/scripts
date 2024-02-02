
{ config, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  #networking
  networking.firewall.enable = true;
  networking.hostName = "nixos-laptop";
  #networking.wireless.enable = true;
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };
 # Services
  services.xserver.enable = true;

  services.blueman.enable = true;

  services.xserver.displayManager.sddm.enable = true;

  programs.hyprland.enable = true;

  services.gvfs.enable = true;

  xdg.portal = { enable = true; extraPortals = [ pkgs.xdg-desktop-portal-gtk ]; };

  security.polkit.enable = true;
  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };


  #Sound
  sound.enable = true;
  hardware.pulseaudio.enable = false;
   hardware.bluetooth.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };


##################
#     PACKAGES  #
#################


fonts.packages = with pkgs; [
  source-code-pro
  nerdfonts
  migmix
  migu
  google-fonts
  open-fonts
  emojione
  freefont_ttf
  libertine
  roboto
  ubuntu_font_family
   noto-fonts
  noto-fonts-cjk
  noto-fonts-emoji
  liberation_ttf
  fira-code
  fira-code-symbols
  mplus-outline-fonts.githubRelease
  dina-font
  proggyfonts
  ];

# User account.
  users.users.nolan = {
    isNormalUser = true;
    description = "Nolan";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    vesktop
    blueberry
   gvfs
   fastfetch
   swww
   unrar
   sl
   sddm
   shotman
   pfetch
   bat
   blueberry
   btop
   cava
   pavucontrol
   dmidecode
    vivaldi
    vivaldi-ffmpeg-codecs
    widevine-cdm
     neovim
     waybar
     fuzzel

    ];
  };

  # Enable automatic login for the user.
  services.xserver.displayManager.autoLogin.enable = true;
  services.printing.enable = true;
  services.xserver.libinput.enable = true;
  services.xserver.displayManager.autoLogin.user = "nolan";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  aria2
  pkgs.home-manager
     hyprland
     git
   brightnessctl
  catppuccin
  catppuccin-gtk
  gvfs
   papirus-icon-theme
   nwg-look
  cinnamon.nemo
  wl-clipboard
  nano
  bluez
  w3m	
  xdg-user-dirs
  xdg-desktop-portal-hyprland
  xdg-desktop-portal
  xdg-desktop-portal-wlr
  xdg-desktop-portal-gtk
  dnsmasq
  amdvlk
  amd-blis
  microcodeAmd
  auto-cpufreq
  alacritty
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
