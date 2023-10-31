{ config, lib, pkgs, modulesPath, ... }:

{

  imports = [ ];  
  
  # Packages
  # --------

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.swisi = {
    isNormalUser = true;
    description = "swisi";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [ #Benuzerspezifische Packages
    #  firefox
    #  thunderbird
    ];
  };
}