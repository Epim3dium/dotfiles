{ config, pkgs, ... }:

{
    # Home Manager needs a bit of information about you and the paths it should
    # manage.
    home.username = "jan";
    home.homeDirectory = "/home/jan";

    # This value determines the Home Manager release that your configuration is
    # compatible with. This helps avoid breakage when a new Home Manager release
    # introduces backwards incompatible changes.
    #
    # You should not change this value, even if you update Home Manager. If you do
    # want to update the value, then make sure to first check the Home Manager
    # release notes.
    home.stateVersion = "24.11"; # Please read the comment before changing.

    nixpkgs.config.allowUnfree = true;
    # The home.packages option allows you to install Nix packages into your
    # environment.
    home.packages = [
        pkgs.nerd-fonts.jetbrains-mono

        pkgs.gnomeExtensions.tiling-assistant
        pkgs.gnome-screenshot
        pkgs.neovim
        pkgs.git
        pkgs.lazygit
        # # Adds the 'hello' command to your environment. It prints a friendly
        # # "Hello, world!" when run.
        pkgs.zsh
        pkgs.fzf
        pkgs.ripgrep
        pkgs.gnumake
        pkgs.unzip
        pkgs.stow
        pkgs.tmux
        pkgs.zoxide

        # pkgs.gcc
        pkgs.clang-tools
        pkgs.clang
        pkgs.cmake
        pkgs.ninja

        pkgs.python312
        pkgs.lua-language-server
        pkgs.python312Packages.python-lsp-server

        pkgs.alacritty
        pkgs.ollama
        pkgs.htop

        pkgs.steam
        pkgs.spotify
        pkgs.obsidian
        pkgs.proton-pass


        # # You can also create simple shell scripts directly inside your
        # # configuration. For example, this adds a command 'my-hello' to your
        # # environment:
        # (pkgs.writeShellScriptBin "my-hello" ''
        #   echo "Hello, ${config.home.username}!"
        # '')
    ];
    dconf.settings = {
        "org/gnome/settings-daemon/plugins/media-keys" = {
            custom-keybindings = [ 
                "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
                "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
            ];
        };
        "org/gnome/desktop/wm/keybindings".close = ["<Alt>q"];
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" =
            { 
                binding = "<Primary><Alt>t";
                command = "alacritty";
                name = "open-terminal";
            };
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" =
            { 
                binding = "<Super><Shift>s";
                command = "gnome-screenshot -i";
                name = "screenshot tool";
            };
        "org/gnome/desktop/wm/keybindings".switch-to-workspace-left = ["<Control>Left"];
        "org/gnome/desktop/wm/keybindings".switch-to-workspace-right = ["<Control>Right"];
        "org/gnome/shell/extensions/tiling-assistant".tile-right-half =      ["<Control><Alt>Right"];
        "org/gnome/shell/extensions/tiling-assistant".tile-left-half =       ["<Control><Alt>Left"];
        "org/gnome/shell/extensions/tiling-assistant".tile-top-half =        ["<Control><Alt>Up"];
        "org/gnome/shell/extensions/tiling-assistant".tile-bottom-half =     ["<Control><Alt>Down"];
        "org/gnome/shell/extensions/tiling-assistant".tile-topleft-quarter=  ["<Shift><Control><Alt>Left"];
        "org/gnome/shell/extensions/tiling-assistant".tile-topright-quarter= ["<Shift><Control><Alt>Right"];
        "org/gnome/shell/extensions/tiling-assistant".tile-bottomleft-quarter=  ["<Super><Control><Alt>Left"];
        "org/gnome/shell/extensions/tiling-assistant".tile-bottomright-quarter= ["<Super><Control><Alt>Right"];
    };
    # Home Manager is pretty good at managing dotfiles. The primary way to manage
    # plain files is through 'home.file'.
    home.file = {
        # # Building this configuration will create a copy of 'dotfiles/screenrc' in
        # # the Nix store. Activating the configuration will then make '~/.screenrc' a
        # # symlink to the Nix store copy.
        # ".screenrc".source = dotfiles/screenrc;

        # # You can also set the file content immediately.
        # ".gradle/gradle.properties".text = ''
        #   org.gradle.console=verbose
        #   org.gradle.daemon.idletimeout=3600000
        # '';
    };

    # Home Manager can also manage your environment variables through
    # 'home.sessionVariables'. These will be explicitly sourced when using a
    # shell provided by Home Manager. If you don't want to manage your shell
    # through Home Manager then you have to manually source 'hm-session-vars.sh'
    # located at either
    #
    #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
    #
    # or
    #
    #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
    #
    # or
    #
    #  /etc/profiles/per-user/jan/etc/profile.d/hm-session-vars.sh
    #
    home.sessionVariables = {
        EDITOR = "nvim";
    };
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


    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
}
