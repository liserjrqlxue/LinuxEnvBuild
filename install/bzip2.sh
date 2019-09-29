#!/bin/bash
pkgname=bzip2
pkgver=1.0.8
source="sourceware.org/pub/${pkgname}/${pkgname}-${pkgver}.tar.gz"

mkdir -p $HOME/src
cd $HOME/src
wget -m $source ||  exit 1
tar avxf $source && cd $(tar -tf $source|head -n1|cut -f 1 -d '/') &&
make install PREFIX=$LOCAL
