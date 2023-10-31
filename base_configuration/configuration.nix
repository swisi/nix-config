# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, utils,  ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./bootloader.nix
      ./networking.nix
      ./systemsettings.nix
      ./xserver.nix
      ./packages.nix
      ./user.nix
    ];

  # Bootloader --> ./bootloader.nix
  #boot.loader.grub.enable = true;
  #boot.loader.grub.device = "/dev/sda";
  #boot.loader.grub.useOSProber = true;


  # Networking --> ./networking.nix
  #networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  #networking.networkmanager.enable = true;

  # Set your time zone. --> ./systemsettings.nix
  #time.timeZone = "Europe/Zurich";

  # Select internationalisation properties. --> ./systemsettings.nix
  #i18n.defaultLocale = "en_US.UTF-8";

  # # XSERVER --> ./xserver.nix
  # Enable the X11 windowing system.
  #services.xserver.enable = true;

  # Enable the KDE Desktop Environment
  #services.xserver.displayManager.sddm.enable = true;
  #services.xserver.desktopManager.plasma5.enable = true;
  #services.xserver.displayManager.defaultSession = "plasmawayland";

  # Enable the GNOME Desktop Environment.
  #services.xserver.displayManager.gdm.enable = true;
  #services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  #services.xserver = {
  #  layout = "ch";
  #  xkbVariant = "";
  #};

  # Configure console keymap --> ./systemsettings.nix
  #console.keyMap = "sg";

  # Enable CUPS to print documents. --> ./systemsettings.nix
  #services.printing.enable = true;

  # Enable sound with pipewire. --> ./systemsettings.nix
  #sound.enable = true;
  #hardware.pulseaudio.enable = false;
  #security.rtkit.enable = true;
  #services.pipewire = {
  #  enable = true;
  #  alsa.enable = true;
  #  alsa.support32Bit = true;
  #  pulse.enable = true;
  #  # If you want to use JACK applications, uncomment this
  #  #jack.enable = true;
  #
  #  # use the example session manager (no others are packaged yet so this is enabled by default,
  #  # no need to redefine it in your config for now)
  #  #media-session.enable = true;
  #};

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # USER --> ./user.nix
  # Define a user account. Don't forget to set a password with ‘passwd’.
  #users.users.swisi = {
  #  isNormalUser = true;
  #  description = "swisi";
  #  extraGroups = [ "networkmanager" "wheel" ];
  #  packages = with pkgs; [
  #  #  firefox
  #  #  thunderbird
  #  ];
  #};

  # Allow unfree packages --> ./systemsettings.nix
  #nixpkgs.config.allowUnfree = true;

  # PACKAGES --> ./packages.nix
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  #environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  #  python310
  #  python311
  #  pipenv
  #  git
  #  gcc
  #  brave
  #  vscode
  #  alacritty
  #  dbeaver
  #  steam
  #];
#
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # SYSTEMSETTINGS --> ./systemsettings.nix
  # Enable the OpenSSH daemon.
  #services.openssh.enable = true;

  # Enable VMware Tools
  #virtualisation.vmware.guest.enable = true;

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

  #system.autoUpgrade.enable = true;
  #system.autoUpgrade.allowReboot = true;
  #system.stateVersion = "23.05"; # Did you read the comment?

}
