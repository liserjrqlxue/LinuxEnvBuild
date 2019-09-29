#!/bin/bash
pkgver=2.32
pkgname=binutils
source=${GNUmirror}/${pkgname}/${pkgname}-${pkgver}.tar.xz

mkdir -p $HOME/src
cd $HOME/src

wget -m ${source}
tar avxf $source && cd $(dirname $(tar -tf $source|head -n1)) \
&& ./configure --prefix=$LOCAL && make -j 6 && make check && make install
