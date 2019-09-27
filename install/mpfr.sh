#!/bin/bash
pkgver=4.0.2
pkgname=mpfr
source=${GNUmirror}/${pkgname}/${pkgname}-${pkgver}.tar.xz
mkdir -p $HOME/src
cd $HOME/src

wget -m ${source}
tar avxf $source
cd $(tar -tf $source|head -n1)
# update gmp
./configure --prefix=$LOCAL --with-gmp=$LOCAL && make -j 6 && make check && make install
