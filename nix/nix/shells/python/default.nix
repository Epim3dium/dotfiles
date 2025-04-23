let
    pkgs = import <nixpkgs> {};
    pythonPackages = pkgs.python312Packages;
    pyPkgs = with pythonPackages; [
        pycrypto
        sympy
        pandas
        requests
        numpy
        # jupyter
        s3fs
        scikit-learn
        nltk
        geopy
        requests
        matplotlib
        ortools
        streamlit
        keras
    ];
in pkgs.mkShell {
        packages = [
            (pkgs.python3.withPackages (python-pkgs: [
                python-pkgs.jupyter
            ]))
            pkgs.python3
            pyPkgs
        ];
    }
