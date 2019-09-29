#!/bin/bash
pkgname=libffi
pkgauthor=libffi
pkgtype=github

source=github.com/${pkgauthor}/${pkgname}
go get -v $source
cd $(go env GOPATH)/src/$source

# update autoconf
sh autogen.sh && ./configure --prefix=$LOCAL && make -j 6 && make install
