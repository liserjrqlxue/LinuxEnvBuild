#!/bin/bash
pkgver=6.1.2
pkgname=gmp
pkgurl=${GNUmirror}
source=${pkgurl}/${pkgname}/${pkgname}-${pkgver}.tar.xz

mkdir -p $HOME/src
cd $HOME/src

if [ ! -e ${source} ];then
	wget -m ${source} || exit 1
fi
pkgdir=$(tar -tf $source|head -n1|cut -f 1 -d '/')
if [ ! -d ${pkgdir} ];then
	tar avxf $source && cd $pkgdir || exit 1
fi
./configure --prefix=$LOCAL && make -j 6 && make install
