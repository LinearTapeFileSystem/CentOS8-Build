#!/bin/sh -l

./autogen.sh
./configure --prefix=$1 --enable-message-checker --enable-warning-as-error
make
make install
