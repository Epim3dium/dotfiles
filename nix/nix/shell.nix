{ pkgs ? import <nixpkgs> {} }:

let
    pythonPackages = pkgs.python3Packages;
in
    pkgs.mkShell {
        # List the packages you want to include in the development shell
        buildInputs = [
            pkgs.glfw
            pkgs.cmake
            pkgs.python3
            pkgs.python3Packages.numpy
            pkgs.python3Packages.pandas
            pkgs.python3Packages.matplotlib
            # Add any other dependencies you need
        ];
    }
