git submodule update --recursive --init
mkdir -p build
cd build
conan install ..
cmake ..
make
cd ..