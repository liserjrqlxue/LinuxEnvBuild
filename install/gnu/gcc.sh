#!/bin/bash
pkgname=gcc
pkgver=9.2.0
source=${GNUmirror}/${pkgname}/${pkgname}-${pkgver}/${pkgname}-${pkgver}.tar.xz
mkdir -p $HOME/src
cd $HOME/src
wget -m ${source}
tar avxf $source
cd $(tar -tf $source|head -n1|cut -f 1 -d '/')
mkdir -p ${pkgname}-build
cd ${pkgname}-build
# update mpc <= mpfr <= gmp
# update binutils for --enable-lto
# update isl
../configure \
--prefix=$LOCAL/${pkgname}-${pkgver} \
--enable-languages=all \
--enable-lto \
--with-gmp=$LOCAL \
--with-mpfr=$LOCAL \
--with-mpc=$LOCAL \
--with-isl=$LOCAL \
&& make -j 6 \
&& make install
