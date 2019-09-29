#!/bin/bash
pkgname=openssl
pkgauthor=openssl
pkgtype=github

source=github.com/${pkgauthor}/${pkgname}
go get -v $source
cd $(go env GOPATH)/src/$source

./config --prefix=$LOCAL && make -j 6 && make test && make install
