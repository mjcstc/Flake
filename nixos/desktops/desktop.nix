{ config, pkgs, ...}:

{
services = {
xserver.enable = true;
#desktopManager.lomiri.enable = true;
xserver.desktopManager.gnome.enable = true;
xserver.displayManager.gdm.enable = true;
gnome.core-utilities.enable = true;
flatpak.enable = true;
};
environment.systemPackages = with pkgs.gnomeExtensions; [
 unite
 ideapad
 dash-to-panel
 just-perfection
 gsconnect
 gtk4-desktop-icons-ng-ding
];

nixpkgs.config.allowAliases = false;
nixpkgs.overlays = [
   (final: prev: {
   gnome = prev.gnome.overrideScope (gnomeFinal: gnomePrev: {
   mutter = gnomePrev.mutter.overrideAttrs ( old: {
   src = pkgs.fetchgit {
   url = "https://gitlab.gnome.org/vanvugt/mutter.git";
   rev = "663f19bc02c1b4e3d1a67b4ad72d644f9b9d6970";
   sha256 = "sha256-I1s4yz5JEWJY65g+dgprchwZuPGP9djgYXrMMxDQGrs=";
         };
       });
     });
   })
];

environment.gnome.excludePackages = (with pkgs; [
  gnome-photos
  gnome-tour
]) ++ (with pkgs.gnome; [
  cheese # webcam tool
	gnome-terminal
  evince # document viewer
  tali # poker game
  iagno # go game
  hitori # sudoku game
  atomix # puzzle game
]);

programs.kdeconnect = {
	enable = true;
	package = pkgs.gnomeExtensions.gsconnect;
};
}
