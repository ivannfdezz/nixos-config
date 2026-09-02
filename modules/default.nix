{ config, pkgs, ... }:

{
  imports =
    [
      ./bootloader.nix
      ./packages.nix
      ./sddm.nix
      ./audio.nix
      ./user.nix
      ./networking.nix
      ./locales.nix
      ./services.nix
      ./settings.nix
      ./other.nix
    ];
}
