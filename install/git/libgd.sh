#!/bin/bash
pkgname=libgd
pkgauthor=libgd
pkgtype=github

source=github.com/${pkgauthor}/${pkgname}
go get -v $source
cd $(go env GOPATH)/src/$source

# update automake
# update libtool
# update pkg-config

./bootstrap.sh && ./configure --prefix=$LOCAL && make -j 6 && make install
# make test
