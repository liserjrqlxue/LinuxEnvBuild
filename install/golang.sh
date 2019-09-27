#!/bin/bash

GOOS="linux"
GOARCH="amd64"
pkgver="1.13"

source=dl.google.com/go/go${pkgvr}.${GOOS}-${GOARCH}.tar.gz
mkdir -p ${HOME}/src
cd ${HOME}/src
wget -m ${source}
tar avxf ${source} # ${HOME}/src/go

# set GOROOT ${HOME}/src/go
# set GOPATH ${HOME}/go
source $HOME/.gorc

