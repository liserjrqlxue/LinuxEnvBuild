#!/bin/bash
pkgname=openssl
pkgauthor=openssl
pkgtype=github

source=github.com/${pkgauthor}/${pkgname}
go get -v $source
cd $(go env GOPATH)/src/$source

./configure --prefix=$LOCAL && make -j 6 && make install
