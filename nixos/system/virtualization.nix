{ config, pkgs, lib, ...}:
{


virtualisation.libvirtd = {
  enable = true;
  qemu = {
    package = pkgs.qemu_kvm;
    runAsRoot = true;
    swtpm.enable = true;
    ovmf = {
      enable = true;
#      packages = [(pkgs.OVMFFull {
  #      secureBoot = true;
 #       tpmSupport = true;
   #   }).fd];
    };
  };
};

}
