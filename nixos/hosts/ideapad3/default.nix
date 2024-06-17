{
config,
pkgs,
...
}: {
   
imports = [./powersave.nix
           ./printer.nix
           ./hardware-configuration.nix ];

nixpkgs.hostPlatform = "x86_64-linux";
networking.hostName = "Ideapad3";

services = {
auto-cpufreq.enable = true;
thermald.enable = true;
system76-scheduler.settings.cfsProfiles.enable = true;
power-profiles-daemon.enable = false;

logind.lidSwitchDocked = "ignore";




};
powerManagement.powertop.enable = true;
}

