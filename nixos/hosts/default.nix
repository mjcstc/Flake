{
config,
pkgs,
...
}: {
    imports = [
     ./ideapad3
 #   ./Oberon
 #   ./Phalanx
    ];
    
     system.stateVersion = "23.11"; # Did you read the comment?

    users.users.Administrator = {
     isNormalUser = true;
     extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
	 git
	
     ];
   };
    
    
}
