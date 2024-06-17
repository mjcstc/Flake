{config,
pkgs,
lib,
...
}:

{
    programs.steam = {
        enable = true;
        gamescopeSession.enable = true;
      };  
        
        
    programs.gamemode = {
        enable = true;
        enableRenice = true;
    };
    
    
    environment.systemPackages = with pkgs; [
        lutris
        heroic
        osu-lazer-bin
    ];
    }
