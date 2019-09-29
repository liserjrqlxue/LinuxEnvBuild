#!/bin/bash
pkgname=curl
pkgauthor=curl
pkgtype=github

source=github.com/${pkgauthor}/${pkgname}
go get -v $source
cd $(go env GOPATH)/src/$source

./buildconf && ./configure --prefix=$LOCAL && make -j 6 && make install
