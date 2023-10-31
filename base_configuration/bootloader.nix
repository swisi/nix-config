{ config, lib, pkgs, modulesPath, ... }:

{

  imports = [ ];  
  
  # Bootloader
  # ----------
  
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

}