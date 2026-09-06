{ config, pkgs, ... }:

{
  # Enable sound.
  services.pipewire.enable = false;
  services.pulseaudio.enable = true;
  # OR
  # services.pipewire = {
  # enable = true;
  # pulse.enable = true;
  # };
}

