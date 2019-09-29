#!/bin/bash
pkgname=pcre
pkgver=8.43
source=ftp.pcre.org/pub/${pkgname}/${pkgname}-${pkgver}.tar.bz2

mkdir -p $HOME/src
cd $HOME/src
if [ ! -e $source ];then
	wget -m $source ||  exit 1
fi
tar avxf $source && cd $(tar -tf $source|head -n1|cut -f 1 -d '/') &&
./configure \
--prefix=$LOCAL \
--enable-unicode-properties \
--enable-pcre16 \
--enable-pcre32 \
--enable-jit \
--enable-pcregrep-libz \
--enable-pcregrep-libbz2 \
--enable-pcretest-libreadline \
&& make -j 6 && make test && make install
