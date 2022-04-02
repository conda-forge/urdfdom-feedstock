#!/bin/sh

mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=$PREFIX -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_INSTALL_LIBDIR=lib
make
make install

echo "Debug check urdfdomExport and urdfdomExport-release"
cat $PREFIX/lib/urdfdom/cmake/urdfdom-config.cmake
cat $PREFIX/lib/urdfdom/cmake/urdfdomExport.cmake
cat $PREFIX/lib/urdfdom/cmake/urdfdomExport-release.cmake
