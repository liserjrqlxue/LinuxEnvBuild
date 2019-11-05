#!/bin/bash

pkgname="go"
pkgurl="dl.google.com"
OS="linux"
ARCH="amd64"
pkgver="1.13.4"

source=${pkgurl}/${pkgname}/${pkgname}${pkgver}.${OS}-${ARCH}.tar.gz
mkdir -p ${HOME}/src
cd ${HOME}/src
if [ ! -e ${source} ];then
	wget -m https://${source} || exit 1
fi
if [ ! -d ${HOME}/src/go ];then
	tar avxf ${source} || exit 1
fi

source $HOME/.gorc

