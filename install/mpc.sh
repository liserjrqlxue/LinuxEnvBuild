#!/bin/bash
pkgver=1.1.0
pkgname=mpc
source=${GNUmirror}/${pkgname}/${pkgname}-${pkgver}.tar.gz
mkdir -p $HOME/src
cd $HOME/src

wget -m ${source}
tar avxf $source
cd $(tar -tf $source|head -n1)
# update mpfr <= gmp
./configure --prefix=$LOCAL --with-gmp=$LOCAL --with-mpfr=$LOCAL && make -j 6 && make check && make install
