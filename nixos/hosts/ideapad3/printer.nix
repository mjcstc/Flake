{config, pkgs, ...}:

{
services = {
 printing.enable = true;
 avahi = {
  enable = true;
  nssmdns4 = true;
  openFirewall = true;
  };
  };

 fonts.packages = with pkgs; [
 terminus-nerdfont
 vegur
 pretendard
 fira-code-nerdfont
 ];
 

}
