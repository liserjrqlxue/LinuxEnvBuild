#!/bin/bash
pkgname=isl
pkgver=0.18
pkgurl=gcc.gnu.org/pub/gcc/infrastructure
source=${pkgurl}/${pkgname}-${pkgver}.tar.bz2
mkdir -p $HOME/src
cd $HOME/src

if [ ! -e ${source} ];then
	wget -m ${source} || exit 1
fi
pkgdir=$(tar -tf $source|head -n1|cut -f 1 -d '/')
if [ ! -d ${pkgdir} ];then
	tar avxf $source || exit 1
fi
cd $pkgdir && ./configure --prefix=$LOCAL && make -j 6 && make install
