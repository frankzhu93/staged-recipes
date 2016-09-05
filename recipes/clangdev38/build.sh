mkdir build
cd build

cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_RTTI=ON \
  -DBUILD_SHARED_LIBS=ON \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  ..

if [ -z "$CPU_COUNT"]; then
  CPU_COUNT=4
fi

cmake --build . -- -j $CPU_COUNT
cmake --build . --target install
