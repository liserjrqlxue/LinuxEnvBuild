#!/bin/bash
pkgname=xz
pkgver=5.2.4
source="tukaani.org/${pkgname}/${pkgname}-${pkgver}.tar.gz"

mkdir -p $HOME/src
cd $HOME/src
wget -m $source
tar avxf $source && cd $(tar -tf $source|head -n1|cut -f 1 -d '/')
./configure --prefix=$LOCAL && make -j 6 && make check && make install
