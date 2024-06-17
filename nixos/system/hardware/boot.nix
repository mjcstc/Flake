{config, pkgs, ...}:
{
boot = { 

 loader = {
 systemd-boot.enable = true;	
#  grub = {
 # enable = true;
 # efiInstallAsRemovable = true;
 # efiSupport = true;
 # device = "nodev";
 # useOSProber = true;
 # };
  efi = {
  canTouchEfiVariables = true;
  efiSysMountPoint = "/boot";
};
};
 kernelPackages = pkgs.linuxPackages_xanmod_latest;
 supportedFilesystems = ["ntfs"];
};

}
