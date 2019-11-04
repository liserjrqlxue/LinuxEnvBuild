#!/bin/bash
pkgname=bamdst
pkgauthor=shiquan
pkgurl=github.com

source=${pkgurl}/${pkgauthor}/${pkgname}
go get ${source}
cd $(go env GOPATH)/src/${source}
git pull
make -j 6 && cp -iv bamdst $LOCAL/bin/
