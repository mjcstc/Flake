{pkgs,config,...}:

{
    
 imports = [
./steam.nix
#./chromium.nix
#./
];
 nixpkgs.config.allowUnfree = true;
 environment.systemPackages = with pkgs; [
     folio
     brave
     git
     gnome-themes-extra
     neovim
     librewolf
     wget
     busybox
 ];
}
