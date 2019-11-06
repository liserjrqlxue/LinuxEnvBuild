#!/bin/bash
pkgname=isl
pkgver=0.21
pkgurl=isl.gforge.inria.fr
source=${pkgurl}/${pkgname}-${pkgver}.tar.xz
mkdir -p $HOME/src
cd $HOME/src

if [ ! -e ${source} ];then
	wget -m ${source} || exit 1
fi
pkgdir=$(tar -tf $source|head -n1|cut -f 1 -d '/')
if [ ! -e ${pkgdir} ];then
	tar avxf $source || exit 1
fi
cd $pkgdir && ./configure --prefix=$LOCAL --with-gmp-prefix=$LOCAL && make -j 6 && make install
