#!/bin/bash
pkgname=pcre
pkgver=8.43
source=ftp.pcre.org/pub/${pkgname}/${pkgname}-${pkgver}.tar.bz2

mkdir -p $HOME/src
cd $HOME/src
wget -m $source ||  exit 1
tar avxf $source && cd $(tar -tf $source|head -n1|cut -f 1 -d '/') &&
./configure --prefix=$LOCAL && make -j 6 && make test && make install
