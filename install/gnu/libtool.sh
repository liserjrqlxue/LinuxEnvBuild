#!/bin/bash
pkgname=libtool
pkgver=2.4.6
source=${GNUmirror}/${pkgname}/${pkgname}-${pkgver}.tar.xz
mkdir -p $HOME/src
cd $HOME/src

if [ ! -e $source ];then
	wget -m $source ||  exit 1
fi
tar avxf $source
cd $(tar -tf $source|head -n1|cut -f 1 -d '/')
./configure --prefix=$LOCAL && make -j 6 && make install
# make check
