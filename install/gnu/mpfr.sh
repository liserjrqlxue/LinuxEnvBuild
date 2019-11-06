#!/bin/bash
pkgver=4.0.2
pkgname=mpfr
pkgurl=${GNUmirror}
source=${pkgurl}/${pkgname}/${pkgname}-${pkgver}.tar.xz

mkdir -p $HOME/src
cd $HOME/src


if [ ! -e ${source} ];then
	wget -m ${source} || exit 1
fi
pkgdir=$(tar -tf $source|head -n1|cut -f 1 -d '/')
if [ ! -d ${pkgdir} ];then
	tar avxf $source || exit 1
fi
# update gmp
cd $pkgdir && ./configure --prefix=$LOCAL --with-gmp=$LOCAL && make -j 6 && make install
