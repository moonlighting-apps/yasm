#!/bin/bash

echo Installing Yasm

make clean
make distclean

./configure --prefix=/usr
make -j$(nproc)
sudo checkinstall --pkgname=yasm --pkgversion="1.2.0" --backup=no \
          --deldoc=yes --fstrans=no --default
