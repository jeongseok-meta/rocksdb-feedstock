cmake -GNinja ^
      -DCMAKE_INSTALL_LIBDIR=lib ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DFAIL_ON_WARNINGS=ON ^
      -DPORTABLE=ON ^
      -DUSE_RTTI=ON ^
      -DWITH_BENCHMARK_TOOLS:BOOL=OFF ^
      -DWITH_GFLAGS=ON ^
      -DWITH_LZ4=ON ^
      -DWITH_SNAPPY=ON ^
      -DWITH_TESTS=OFF ^
      -DWITH_TOOLS=OFF ^
      -DWITH_ZLIB=ON ^
      -DWITH_ZSTD=ON ^
      -WITH_BZ2=ON ^
      -WITH_JEMALLOC=OFF ^
      -S src ^
      -B build
if errorlevel 1 exit 1

cmake  --build build
if errorlevel 1 exit 1

cmake --build build -- install
if errorlevel 1 exit 1

