#!/bin/bash
pkgname=xz
pkgver=5.2.4
source="tukaani.org/${pkgname}/${pkgname}-${pkgver}.tar.gz"

mkdir -p $HOME/src
cd $HOME/src
wget -m $source
tar avxf $source && cd $(tar -tf $source|head -n1)
./configure --prefix=$LOCAL && make && make check && make install
