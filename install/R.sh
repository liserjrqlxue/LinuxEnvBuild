#!/bin/bash
pkgname=R
pkgver=3.6.1
source=${CRANmirror}/src/base/${pkgname}-$(echo ${pkgver}|cut -f 1 -d '.')/${pkgname}-${pkgver}.tar.gz

mkdir -p $HOME/src
cd $HOME/src
if [ ! -e $source ];then
	wget -m $source
fi
#tar avxf $source && \
cd $(tar -tf $source|head -n1|cut -f 1 -d '/')
# update zlib
# update bzip2
# update pcre
# update curl (libcurl)
./configure --prefix=$LOCAL/${pkgname}-${pkgver} && make -j 6 && make install
# make test
