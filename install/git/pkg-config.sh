#!/bin/bash
pkgname=pkg-config
pkgauthor=freedesktop
pkgtype=anongit

source=$pkgtype.${pkgauthor}.org/${pkgname}
git clone git://$source $HOME/src/$source
cd $(go env GOPATH)/src/${source}
./autogen.sh && ./configure --prefix=$LOCAL && make -j 6 && make install
