#!/bin/bash
pkgver=2.32
pkgname=binutils
source=${GNUmirror}/${pkgname}/${pkgname}-${pkgver}.tar.xz

mkdir -p $HOME/src
cd $HOME/src

if [ !-e ${source} ];then
	wget -m ${source}
fi
tar avxf $source && cd $(dirname $(tar -tf $source|head -n1)) 
mkdir -p ${pkgname}-build
cd ${pkgname}-build
echo cd ${pkgname}-build
../configure \
--prefix=$LOCAL \
--enable-lto \
--with-isl=$LOCAL \
--with-gmp=$LOCAL \
--with-mpfr=$LOCAL \
--with-mpc=$LOCAL \
&& make -j 6 && make install
# make check
