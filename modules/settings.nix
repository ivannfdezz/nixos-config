{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  nix.settings = {
    substituters = [ "https://cache.soopy.moe" ];
    trusted-substituters = [ "https://cache.soopy.moe" ]; # to allow building as a non-trusted user
    trusted-public-keys =
      [ "cache.soopy.moe-1:0RZVsQeR+GOh0VQI9rvnHz55nVXkFardDqfm4+afjPo=" ];
  };
}
