#!/bin/bash
pkgname=zlib
pkgver=1.2.11
source="www.zlib.net/${pkgname}-${pkgver}.tar.xz"

mkdir -p $HOME/src
cd $HOME/src
wget -m $source
tar avxf $source && cd $(tar -tf $source|head -n1|cut -f 1 -d '/')
./configure --prefix=$LOCAL && make -j 6 && make test && make install
