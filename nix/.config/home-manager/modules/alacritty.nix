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
            window.opacity = 0.75;
            colors = {
                primary = {
                    background = "0x2E3440";
                    foreground = "0xD8DEE9";
                };
                normal = {
                    black   = "0x3B4252";
                    red     = "0xBF616A";
                    green   = "0xA3BE8C";
                    yellow  = "0xEBCB8B";
                    blue    = "0x81A1C1";
                    magenta = "0xB48EAD";
                    cyan    = "0x88C0D0";
                    white   = "0xE5E9F0";
                };
                bright = {
                    black   = "0x4C566A";
                    red     = "0xBF616A";
                    green   = "0xA3BE8C";
                    yellow  = "0xEBCB8B";
                    blue    = "0x81A1C1";
                    magenta = "0xB48EAD";
                    cyan    = "0x8FBCBB";
                    white   = "0xECEFF4";
                };
            };

        };
    };
}
