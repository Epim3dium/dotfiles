source ~/.bash_aliases
echo "hi"
export VAR="my value"
export LDFLAGS="-L/opt/homebrew/opt/libomp/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libomp/include"
export OpenMP_C_FLAGS=-fopenmp=lomp
export OpenMP_CXX_FLAGS=-fopenmp=lomp
export OpenMP_C_LIB_NAMES="libomp"
export OpenMP_CXX_LIB_NAMES="libomp"
export OpenMP_libomp_LIBRARY="/opt/local/lib/libomp.dylib"
export OpenMP_CXX_FLAGS="-Xpreprocessor -fopenmp /opt/local/lib/libomp.dylib -I/opt/local/include"
export OpenMP_CXX_LIB_NAMES="libomp"
export OpenMP_C_FLAGS="-Xpreprocessor -fopenmp /opt/local/lib/libomp.dylib -I/opt/local/include"

