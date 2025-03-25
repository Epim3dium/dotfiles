let
    pkgs = import <nixpkgs> {};
in pkgs.mkShell {
        packages = [
            pkgs.python3
            (pkgs.python3.withPackages (python-pkgs: [
                python-pkgs.pandas
                python-pkgs.requests
                python-pkgs.numpy
                python-pkgs.jupyter
                python-pkgs.s3fs
                python-pkgs.scikit-learn
                python-pkgs.nltk
                python-pkgs.geopy
                python-pkgs.requests
                python-pkgs.matplotlib
                python-pkgs.ortools
            ]))
        ];
    }
