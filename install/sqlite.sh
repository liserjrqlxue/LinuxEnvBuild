#!/bin/bash
pkgname=sqlite
source="www.sqlite.org/src/tarball/${pkgname}.tar.gz"

mkdir -p $HOME/src
cd $HOME/src
wget -m $source ||  exit 1
tar avxf $source && cd $(tar -tf $source|head -n1|cut -f 1 -d '/')
mkdir -p bld && cd bld
../configure --prefix=$LOCAL && make -j 6 && make sqlite3.c && make install
