{ config, lib, pkgs, ... }:

{
#  services.xserver.displayManager.sddm.enable = true;
  programs.hyprland = {
	enable = true;
	xwayland.enable = true;
};

programs.starship.enable = true;

  environment.systemPackages = with pkgs; [
  #main ricing utilities
    waybar
    waypaper
    swaynotificationcenter
    light
    nwg-displays
    swaybg
    hyprlock
    hypridle
    gnome.zenity
    dateutils
    avizo
    swaybg
    grim
    swappy
    slurp
    libnotify
    wl-clipboard
    pavucontrol
    wofi
    foot
    wlogout
  # File manager 
  gnome.gnome-tweaks
  playerctl


   ];




















}
