#!/bin/bash

pkgname=git
pkgver=2.24.0
pkgurl=mirrors.edge.kernel.org/pub/software/scm

source=${pkgurl}/${pkgname}/${pkgname}-${pkgver}.tar.xz

mkdir -p ${HOME}/src
cd ${HOME}/src

if [ ! -e $source ];then
	wget -m https://$source || exit 1
fi
pkgdir=$(tar -tf $source|head -n1|cut -f 1 -d '/')

if [ ! -d ${pkgdir} ];then
	tar avxf $source || exit 1
fi
cd ${pkgdir}
./configure --prefix=$LOCAL && make -j 6 && make install
