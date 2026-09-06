{ config, lib, pkgs, ... }:

{
  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [
    # vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    # wget
    git
    librewolf
    kitty
    nerd-fonts.iosevka
    fastfetch
    fetch
    fish
    vscode
    prismlauncher
    lunar-client
    mgba
    melonds
    supertuxkart
    protonup-qt
    obs-studio
    vlc
    gimp
    inkscape
    audacity
    vesktop
    spotify
    plexamp
  ];

  programs.steam = {
  enable = true;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
};
}

