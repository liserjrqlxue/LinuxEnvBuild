#!/bin/bash
pkgname=curl
pkgver=7.66.0
source="curl.haxx.se/download/${pkgname}-${pkgver}.tar.gz"

mkdir -p $HOME/src
cd $HOME/src
wget -m $source ||  exit 1
tar avxf $source && cd $(tar -tf $source|head -n1|cut -f 1 -d '/') &&
./configure --prefix=$LOCAL --enable-ipv6 && make -j 6 && make install
# make test
