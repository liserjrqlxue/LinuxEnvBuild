#!/bin/bash
pkgname=isl
pkgver=0.21
source=${pkgname}.gforge.inria.fr/${pkgname}-${pkgver}.tar.xz
mkdir -p $HOME/src
cd $HOME/src

wget -m ${source}
tar avxf $source
cd $(tar -tf $source|head -n1)
./configure --prefix=$LOCAL --with-gmp-prefix=$LOCAL && make -j 6 && make install
# make check
