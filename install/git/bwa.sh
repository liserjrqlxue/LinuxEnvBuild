#!/bin/bash
pkgname=bwa
pkgauthor=lh3
pkgurl=github.com

source=${pkgurl}/${pkgauthor}/${pkgname}
go get ${source}
cd $(go env GOPATH)/src/${source}
git pull
make -j 6 && cp -iv bwa $LOCAL/bin/
