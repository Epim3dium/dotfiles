{ pkgs, config, ... }:

{
    imports = [
        inputs.spicetify-nix.homeManagerModules.default
    ];
    home.packages = [
        pkgs.spotify
    ];
    programs.spicetify =
        let
            spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
        in
            {
            enable = true;
            theme = spicePkgs.themes.nord;
        };
}
