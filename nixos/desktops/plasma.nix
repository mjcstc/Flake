{config, pkgs, lib, ...}: 

{
services.xserver.enable = true;
services.desktopManager.plasma6.enable = true;
services.xserver.displayManager.sddm = {
	enable = true;
    # leaving this line for themes
    };

environment.systemPackages = with pkgs; [
themechanger
kdePackages.qtstyleplugin-kvantum
mojave-gtk-theme
 ];
}
