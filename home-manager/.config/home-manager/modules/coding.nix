{ pkgs, ... }:

{
    imports = [
        ./alacritty.nix
    ];
    home.packages = [
        pkgs.lazygit
        # # Adds the 'hello' command to your environment. It prints a friendly
        # # "Hello, world!" when run.
        pkgs.zsh
        pkgs.gnumake
        pkgs.unzip
        pkgs.stow
        pkgs.tmux
        pkgs.zoxide

        pkgs.fzf
        pkgs.ripgrep
        # pkgs.gcc
        pkgs.clang-tools
        pkgs.clang
        pkgs.cmake
        pkgs.ninja

        pkgs.python312
        pkgs.lua-language-server
        pkgs.python312Packages.python-lsp-server

    ];
}
