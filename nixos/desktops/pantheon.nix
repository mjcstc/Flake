{config, lib, pkgs, ...}:

{
services = {
flatpak.enable = true;
xserver = {
 enable = true;
 desktopManager.pantheon.enable = true;
 displayManager.lightdm.enable = true;
};
};

#programs.pantheon-tweaks.enable = true;
environment.systemPackages = with pkgs; [
 pantheon.epiphany
 pkgs.pantheon-tweaks
 fondo
 notes-up
 agenda
];
}
