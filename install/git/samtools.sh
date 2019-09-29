#!/bin/bash
pkgname=samtools
pkgauthor=samtools
pkgtype=github

source=github.com/${pkgauthor}/${pkgname}
go get ${source}
cd $(go env GOPATH)/src/${source}
autoheader
# update autoconf
autoconf -Wno-syntax
./configure --prefix=$LOCAL && make -j 6 && make check && make install
