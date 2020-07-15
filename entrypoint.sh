#!/bin/sh -l

./autogen.sh
./configure --prefix=$1
make
make install

# Backend I/F checking
cd $1
git clone https://github.com/LinearTapeFileSystem/ltfs-backends.git
cd ltfs-backends
export PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/tmp/ltfs/lib/pkgconfig
./autogen.sh
./configure --enable-checkonly
make
