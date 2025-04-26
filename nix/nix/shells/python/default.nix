let
    pkgs = import <nixpkgs> {};
    pythonPackages = pkgs.python312Packages;
    pyPkgs = with pythonPackages; [
        pydicom
        pycrypto
        sympy
        pandas
        requests
        numba
        numpy
        # jupyter
        s3fs
        scikit-learn
        scikit-image
        nltk
        geopy
        requests
        matplotlib
        ortools
        streamlit
        keras
        tkinter
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
