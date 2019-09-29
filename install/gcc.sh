#!/bin/bash
gnuMirror=mirrors.ustc.edu.cn/gnu
pkgver=9.2.0
pkgname=gcc
source=${gnuMirror}/${pkgname}/${pkgname}-${pkgver}/${pkgname}-${pkgver}.tar.xz
mkdir -p $HOME/src
cd $HOME/src
wget -m ${source}
tar avxf $source
cd $(tar -tf $source|head -n1)
mkdir -p ${pkgname}-build
cd ${pkgname}-build
# update mpc <= mpfr <= gmp
../configure --prefix=$LOCAL/${pkgname}-${pkgver}  -enable-languages=all --with-gmp=$LOCAL --with-mpfr=$LOCAL --with-mpc=$LOCAL \
&& make -j 6 \
&& make install

