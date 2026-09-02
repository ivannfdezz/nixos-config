{ config, pkgs, ... }:

{
  # TODO please change the username & home directory to your own
  home.username = "ivann";
  home.homeDirectory = "/home/ivann";

  programs.git = {
    enable = true;
    userName = "ivann";
    userEmail = "i.fdez.st@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "26.05";
}