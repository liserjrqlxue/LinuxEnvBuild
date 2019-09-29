#!/bin/bash
pkgver=3.7.4
pkgname=Python
source=www.python.org/ftp/python/${pkgver}/${pkgname}-${pkgver}.tar.xz

mkdir -p $HOME/src
cd $HOME/src
wget -m $source
tar avxf $source
cd $(tar -tf $source|head -n1)
# update gcc
./configure --prefix=$LOCAL/${pkgname}-${pkgver} --enable-optimizations #--with-lto 
make -j 6
make install
#make test
