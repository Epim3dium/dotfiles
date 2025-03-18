{ pkgs, config, ... }:

{
    home.packages = [
        pkgs.nerd-fonts.jetbrains-mono
        pkgs.alacritty
    ];
    programs.alacritty = {
        enable = true;
        settings = {
            font = {
                normal = {
                    family = "JetBrainsMono Nerd Font";
                    style = "Regular";
                };
                bold = {
                    family = "JetBrainsMono Nerd Font";
                    style = "Bold";
                };
                italic = {
                    family = "JetBrainsMono Nerd Font";
                    style = "Italic";
                };
                size = 12.0;
            };
            colors = with config.colorScheme.colors; {
                bright = {
                    black = "0x${base00}";
                    blue = "0x${base0D}";
                    cyan = "0x${base0C}";
                    green = "0x${base0B}";
                    magenta = "0x${base0E}";
                    red = "0x${base08}";
                    white = "0x${base06}";
                    yellow = "0x${base09}";
                };
                cursor = {
                    cursor = "0x${base06}";
                    text = "0x${base06}";
                };
                normal = {
                    black = "0x${base00}";
                    blue = "0x${base0D}";
                    cyan = "0x${base0C}";
                    green = "0x${base0B}";
                    magenta = "0x${base0E}";
                    red = "0x${base08}";
                    white = "0x${base06}";
                    yellow = "0x${base0A}";
                };
                primary = {
                    background = "0x${base00}";
                    foreground = "0x${base06}";
                };
            };
        };
    };
}
