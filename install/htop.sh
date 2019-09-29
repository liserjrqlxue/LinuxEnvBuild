#!/bin/bash

source=github.com/hishamhm/htop
go get -v $source
cd $(go env GOPATH)/src/$source

# update autoconf
sh autogen.sh && ./configure --prefix=$LOCAL && make -j 6 && make install
