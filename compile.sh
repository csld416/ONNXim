mkdir build && cd build
conan install ..
cmake ..
make -j
cd build/
make
cd ..