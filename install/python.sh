#!/bin/bash
pkgver=3.7.4
pkgname=Python
source=www.python.org/ftp/python/${pkgver}/${pkgname}-${pkgver}.tar.xz

mkdir -p $HOME/src
cd $HOME/src
if [ ! -e $source ];then
	wget -m $source
fi
pkgdir=$(tar -tf $source|head -n1|cut -f 1 -d '/')
if [ ! -d ${pkgdir} ];then
	tar avxf $source
fi
cd ${pkgdir}
# update gcc
# update libffi for _ctypes
# update openssl for _ssl
./configure --prefix=$LOCAL/${pkgname}-${pkgver} --enable-optimizations --with-lto 
make -j 6
make install
#make test
