#!/bin/bash
pkgver=6.1.2
pkgname=gmp
source=${GNUmirror}/${pkgname}/${pkgname}-${pkgver}.tar.xz

mkdir -p $HOME/src
cd $HOME/src

wget -m ${source}
tar avxf $source && cd $(tar -tf $source|head -n1)
./configure --prefix=$LOCAL && make -j 6 && make check && make install
