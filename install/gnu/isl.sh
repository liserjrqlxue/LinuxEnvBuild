#!/bin/bash
pkgname=isl
pkgver=0.18
source=gcc.gnu.org/pub/gcc/infrastructure/${pkgname}-${pkgver}.tar.bz2
mkdir -p $HOME/src
cd $HOME/src

wget -m ${source}
tar avxf $source
cd $(tar -tf $source|head -n1)
./configure --prefix=$LOCAL && make -j 6 && make check && make install
