#!/bin/bash
pkgname=openssl
pkgver=1.1.1d
source="www.openssl.org/source/${pkgname}-${pkgver}.tar.gz"

mkdir -p $HOME/src
cd $HOME/src
wget -m $source
tar avxf $source && cd $(tar -tf $source|head -n1|cut -f 1 -d '/')
./config --prefix=$LOCAL && make -j 6 && make test && make install
